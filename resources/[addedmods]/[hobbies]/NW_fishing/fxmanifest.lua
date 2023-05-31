fx_version 'cerulean'

game 'gta5'
lua54 'yes'

version '1.0.0'
author 'Demigod'
description 'Advanced Fishing Script'

client_scripts {
	"client/client.lua",
}

server_scripts {
	"server/*.lua",
}

shared_scripts {
	'@PolyZone/client.lua',
	"client/config.lua"
}

exports {
	"fishingGameStart"
}

ui_page "html/index.html"

files {
	"html/index.html",
	"html/style.css",
	"html/index.js",
	"html/reset.css",
	"html/imgs/*.png"
}

escrow_ignore {
	'client/client.lua',
	'client/config.lua',
	'server/config.lua',
	'server/main.lua',
	'README.txt',
}
dependency '/assetpacks'