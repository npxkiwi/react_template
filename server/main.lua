lib.locale()

--[[
    Made in server side to ensure easy access to the ESX object and other server-side functions.
]]

lib.addCommand(Config.CommandTest, {
    restricted = Config.CommandAccess
}, function(source, args, rawCommand)
    local xPlayer = ESX.GetPlayerFromId(source)
    if xPlayer then
        TriggerClientEvent(Config.ResourceName .. ":openTestMenu", source)
    end
end)

lib.addCommand(Config.CommandAdmin, {
    restricted = Config.CommandAccessAdmin
}, function(source, args, rawCommand)
    local xPlayer = ESX.GetPlayerFromId(source)
    if xPlayer then
        TriggerClientEvent(Config.ResourceName .. ":openAdminMenu", source)
    end
end)
