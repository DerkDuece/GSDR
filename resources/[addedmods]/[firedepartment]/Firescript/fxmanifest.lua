fx_version 'adamant'

games {
	'gta5'
}

author 'Albo1125, GIMI, Wick'
version '2.0.2'
description 'Fire Script'

shared_scripts {
	'config.lua',
    '@qb-core/shared/locale.lua',
	'locales/en.lua',
	'locales/da.lua',
}

client_scripts {
	"client/utils.lua",
	"client/fire.lua",
	"client/dispatch.lua",
	"client/main.lua",
}

server_scripts {
	"server/utils.lua",
	"server/whitelist.lua",
	"server/fire.lua",
	"server/dispatch.lua",
	"server/main.lua",
}
