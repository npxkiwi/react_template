Client = lib.require('cl_cfg')
local hasLoadedUi = false

lib.locale()

RegisterNetEvent(Client.ResourceName .. ":openTestMenu")
AddEventHandler(Client.ResourceName .. ":openTestMenu", function()
    setupUi()

    SendNUIMessage({
        action = 'openTEST',
    })
    SetNuiFocus(true, true)
end)

RegisterNetEvent(Client.ResourceName .. ":openAdminMenu")
AddEventHandler(Client.ResourceName .. ":openAdminMenu", function()
    setupUi()

    SendNUIMessage({
        action = 'openADMIN',
    })
    SetNuiFocus(true, true)
end)

function setupUi()
    if hasLoadedUi then return end

    SendNUIMessage({
        action = 'setInitData',
        data = {
            lib.getLocales()
        }
    })
end
