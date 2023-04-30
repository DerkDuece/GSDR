fx_version "adamant"
game "gta5"
lua54 'yes'

description 'FirefighterJob'
author '(Wick)#5854'
version '1.3.3'
lua54 'yes'

shared_scripts {
	'@qb-core/shared/locale.lua',
    'locales/en.lua',
    'locales/*.lua',
    'config.lua'
}

client_scripts {
	'@PolyZone/client.lua',
	'@PolyZone/BoxZone.lua',
	'@PolyZone/ComboZone.lua',
    'client/*.lua'
}

server_script {
    'server/server.lua',
	'server/version.lua'
}

-- NUI Default Page
ui_page "html/index.html"


files {
	"html/index.html",
	'html/main.js',
	'html/sounds/*.mp3',
	'hose/*.meta'
}

-- data_file for hose
data_file 'WEAPON_METADATA_FILE' 'hose/weaponarchetypes.meta'
data_file 'WEAPON_ANIMATIONS_FILE' 'hose/weaponanimations.meta'
data_file 'WEAPONINFO_FILE' 'hose/weapons.meta'

-- Export function
export { 
	'PagePagers',
	'SoundFireSiren'
}