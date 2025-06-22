local hasLoadedUi = false

lib.locale()

RegisterNetEvent(Config.ResourceName .. ":openTestMenu")
AddEventHandler(Config.ResourceName .. ":openTestMenu", function()
    setupUi()

    SendNUIMessage({
        action = 'openTEST',
    })
    SetNuiFocus(true, true)
end)

RegisterNetEvent(Config.ResourceName .. ":openAdminMenu")
AddEventHandler(Config.ResourceName .. ":openAdminMenu", function()
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
