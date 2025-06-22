local shouldBeResourceName = 'react_template'

-- AddEventHandler('onResourceStart', function(resourceName)
--     if (GetCurrentResourceName() ~= resourceName) then
--         return
--     end
--     if GetCurrentResourceName() ~= shouldBeResourceName then
--         RenameResourcePrint()
--         return
--     end

--     Wait(5000)

--     resourceName = "" .. GetCurrentResourceName() .. ""

--     function CheckVersion(err, responseText, headers)
--         curVersion = GetResourceMetadata(GetCurrentResourceName(), 'version', 0)

--         local sanitizedResponse = responseText:gsub("%s+", ""):gsub("%s", "")
--         local sanitizedCurVersion = curVersion:gsub("%s+", ""):gsub("%s", "")

--         if sanitizedResponse ~= sanitizedCurVersion then
--             print('^7----------------------------------------')
--             print('^2[' .. resourceName .. '] - Update Available!')
--             print('^7Current Version: ' .. '^2' .. sanitizedCurVersion)
--             print('^7Latest Version: ' .. '^1' .. sanitizedResponse)
--             print('')
--             print('^2Please update the script to the latest version using keymaster.')
--             print('^7----------------------------------------')
--         end
--     end

--     PerformHttpRequest("https://raw.githubusercontent.com/NN-FiveM/version-check/refs/heads/main/react_template",
--         CheckVersion,
--         "GET")
-- end)

function RenameResourcePrint()
    Citizen.CreateThread(function()
        while true do
            Citizen.Wait(5000)
            print('^1Please rename ' ..
                GetCurrentResourceName() ..
                ' script back to its original name (' ..
                shouldBeResourceName .. ') in order for it to function properly')
        end
    end)
end
