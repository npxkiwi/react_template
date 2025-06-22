fx_version "cerulean"

game "gta5"
lua54 'yes'

author "NN Development"
description "React Template"
version '0.0.1'

shared_scripts {
    '@ox_lib/init.lua',
    '@es_extended/imports.lua',
    "config/*.lua"
}

client_scripts {
    "client/*.lua"
}

server_scripts {
    "@oxmysql/lib/MySQL.lua",
    "server/*.lua"
}

files {
    'locales/*.json',
    'web/index.html',
    'web/script.js',
    'web/styles.css'
}

ui_page 'web/index.html'

exports {}

server_exports {}

escrow_ignore {
    'config/*.lua',
    'locales/*.json',
    'client/functions.lua',
    'server/functions.lua',
}
