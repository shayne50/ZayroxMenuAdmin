fx_version 'adamant'
game 'gta5'

dependency 'es_extended'

client_scripts {
    "internal/RageUI/RMenu.lua",
    "internal/RageUI/menu/RageUI.lua",
    "internal/RageUI/menu/Menu.lua",
    "internal/RageUI/menu/MenuController.lua",
    "internal/RageUI/components/*.lua",
    "internal/RageUI/menu/elements/*.lua",
    "internal/RageUI/menu/items/*.lua",
    "internal/RageUI/menu/panels/*.lua",
    "internal/RageUI/menu/windows/*.lua",
    'config.lua',
    'client/client.lua'
}

server_scripts {
    'config.lua',
    --'locales/fr.lua',
    'server/server.lua'
}

author 'ZAYROX'
description 'Discord : zayrox_13'
version '1.9.1'
