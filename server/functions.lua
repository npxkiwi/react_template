---Sending a log to discord
---@param color number
---@param title string
---@param message string
---@param webhook string
function SendDiscordLog(color, title, message, webhook, source)
    if Config.Webhook.enable then
        local identifiers = GetPlayerIdentifiers(source)
        local identifierString = ""
        if identifiers then
            for _, id in ipairs(identifiers) do
                identifierString = identifierString .. id .. "\n"
            end
        end

        local embed = {
            {
                ['color'] = color,
                ['title'] = title,
                ['description'] = message .. "\n\n**Identifiers:**\n" .. identifierString,

                ['footer'] = {
                    ['text'] = "NN Refund - " .. os.date('%d/%m/%Y %H:%M:%S')
                }
            }
        }

        PerformHttpRequest(webhook, function(err, text, headers) end, 'POST', json.encode({ embeds = embed }), {
            ['Content-Type'] = 'application/json'
        })
    end
end
