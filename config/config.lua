Config = {}

--[[
    Command to open the test menu.
]]

Config.CommandTest = "testnui"
Config.CommandAccessTest = "user"

--[[
    Command to to open the admin menu.
]]
Config.CommandAdmin = "adminnui"
Config.CommandAccessAdmin = "admin"

--[[
    Webhooks for logging.
]]

Config.Webhook = {
    enable = true, -- Set to false to disable webhooks.
    Webhook1 =
    "https://discord.com/api/webhooks/",
    Webhook2 =
    "https://discord.com/api/webhooks/",
}

--[[
    Automatically set up the tables in the database for you, if they don't exist.
]]

Config.AutomaticDB = true -- Set to false if you know what you're doing.

--[[
    DONT CHANGE!!!
]]

Config.ResourceName = GetCurrentResourceName() -- Dont change this.
