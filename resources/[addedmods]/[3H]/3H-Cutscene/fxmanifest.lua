fx_version 'cerulean'
game 'gta5'
lua54 'yes'

version '2.1'
description 'Advanced Intro Cutscene Script'
author '3RROR'

dependencies {
    'PolyZone' -- If you're not planning on using the taxi feature, feel free to comment out this line!
}

client_scripts {
	'@PolyZone/client.lua',
	'@PolyZone/CircleZone.lua',
	'client/cl_cutscene.lua',
 	'client/cl_main.lua',
	'shared/open.lua',
}

server_scripts {
	'server/version_check.lua',
	'server/sv_main.lua',
}

shared_scripts {
	'@ox_lib/init.lua',
	'shared/config.lua',
	'shared/functions.lua',
	'locales/**.lua',
}

escrow_ignore {
	'shared/config.lua',
	'shared/open.lua',
	'locales/**.lua',
}
dependency '/assetpacks'