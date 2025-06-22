local function getPlayerDetails(source)
    if not source or source == 0 then
        return
    end
    local identifieres = {
        steamid = 'Ukendt',
        license = 'Ukendt',
        discord = 'Ukendt',
        Name = 'Ukendt',
    }
    for k, v in ipairs(GetPlayerIdentifiers(source)) do
        if string.find(v, "steam:") then
            identifiers.steamid = v
        elseif string.find(v, "license:") then
            identifiers.license = v
        elseif string.find(v, "discord:") then
            identifiers.discord = v
        end
    end
    local xPlayer = ESX.GetPlayerFromId(source)
    if xPlayer then
        identifieres.Name = xPlayer.getName()
    end
    return {
        identifieres = identifieres
    }
end

function DiscordLog(source, title, message, webhook)
    local we = Server.Webhooks[webhook]
    if not we then
        print('Webhook blev ikke fundet')
        return
    end

    local PlInfo = {}
    if source and source > 0 then
        PlInfo = getPlayerDetails(source)
    end
    local tit = title:gsub("^%1", string.upper)
    local aa = {}
    table.insert(aa, {
        name = "Tid",
        value = os.date("%d/%m/%Y %H:%M:%S")
    })
    table.insert(aa, {
        name = "Spiller",
        value = PlInfo.identifiers.name.. " (ID: "..source..")"
    })
    table.insert(aa,{
        name = "Identifikatorer",
        value = "Steam: "..PlInfo.identifiers.steamid .. "\nLicense: ".. PlInfo.identifieres.license
    })
    table.insert(aa, {
        name = "Detaljer",
        value = message
    })
    local payload = {
        content = nil,
        embeds = {
            {
                title = "React_Template - " .. title .. "\n",
                color = 5763719,
                author = {
                name = "React Template",
                },
                fields = fields,
                description = "FRA React Template",
            }
            },
        }
    PerformHttpRequest(we, function(err, text, headers) end, 'POST', json.encode(payload), { ['Content-Type'] = 'application/json' })
end