fx_version 'cerulean'
game 'gta5'
lua54 'yes'

version '1.0'
description 'A simple script to post ad,tweet,insta posts on discord as hook'
author '3RROR'

dependency {
	'qb-menu',
	'qb-input',
	'ox_lib', -- Comment this out if not using ox_lib
}

client_scripts {
 	'client/cl_main.lua'
}

server_scripts {
	'server/version_check.lua',
	'server/sv_main.lua',
	'server/sv_posts.lua',
	'shared/sv_open.lua',
	'shared/webhook.lua',
}

shared_scripts {
	'@ox_lib/init.lua',
	'shared/config.lua',
	'shared/shared.lua',
	'locales/**.lua',
}

escrow_ignore {
	'shared/config.lua',
	'shared/sv_open.lua',
	'shared/webhook.lua',
	'locales/**.lua',
}










dependency '/assetpacks'