fx_version 'adamant'
game 'gta5'

author 'Driftoooo#9895'
description 'Realistic Police Dept. Add-on vehicles pack.'
version '1.0'
 
files {
    'data/**/*.meta'
}

data_file 'HANDLING_FILE' 'data/**/handling.meta'
data_file 'VEHICLE_METADATA_FILE' 'data/**/vehicles.meta'
data_file 'CARCOLS_FILE' 'data/**/carcols.meta'
data_file 'VEHICLE_VARIATION_FILE' 'data/**/carvariations.meta'
data_file 'VEHICLE_LAYOUTS_FILE' 'data/**/vehiclelayouts.meta'

client_script {
	'vehicle_names.lua'
}