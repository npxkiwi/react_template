Server = lib.require('sv_cfg')
lib.locale()

lib.addCommand(Server.CommandTest, {
    restricted = Server.CommandAccess
}, function(source, args, rawCommand)
    local xPlayer = ESX.GetPlayerFromId(source)
    if xPlayer then
        TriggerClientEvent(Server.ResourceName .. ":openTestMenu", source)
    end
end)

lib.addCommand(Server.CommandAdmin, {
    restricted = Server.CommandAccessAdmin
}, function(source, args, rawCommand)
    local xPlayer = ESX.GetPlayerFromId(source)
    if xPlayer then
        TriggerClientEvent(Server.ResourceName .. ":openAdminMenu", source)
    end
end)
