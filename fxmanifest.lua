fx_version "cerulean"

game "gta5"
lua54 'yes'

author "NN Development"
description "React Template"
version '0.0.1'

shared_scripts {
    '@ox_lib/init.lua',
    '@es_extended/imports.lua',
}

client_scripts {
    "config/cl_cfg.lua",
    "client/*.lua"
}

server_scripts {
    "@oxmysql/lib/MySQL.lua",
    "config/sv_cfg.lua",
    "server/*.lua"
}

files {
    'locales/*.json',
    'web/index.html',
    'web/script.js',
    'web/styles.css'
}

ui_page 'web/index.html'