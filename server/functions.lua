-- Better written discord log

---@param color number -- Color code of the log message
---@param text string -- The message to log
---@param webhook any -- The Discord webhook URL to send the log message to
function server_log(color,text,webhook)
   if not color or not text or not webhook then
        print('Contact the developer to set the server log properly.')
        return
    end
    local embed = {
        {
            ["color"] = color,
            ["title"] = "React Template",
            ["description"] = text,
            ["timestamp"] = os.date("!%Y-%m-%dT%H:%M:%SZ"),
        }
    }
    PerformHttpRequest(webhook, function(err, text, headers) end, 'POST', json.encode({username = 'React Template', embeds = embed}), { ['Content-Type'] = 'application/json' })
end