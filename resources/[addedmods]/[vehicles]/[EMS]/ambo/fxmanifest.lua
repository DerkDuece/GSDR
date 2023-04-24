fx_version 'cerulean'
game 'gta5'

description 'FirePack - EMS - MRSA'
version '1.0.0'

files {
    
	-- text
    'dlctext.meta',
    'vehicles/vehiclelayouts.meta',
    'vehicles/vehicles.meta',
    'vehicles/carcols.meta',
    'vehicles/carvariations.meta',
    'vehicles/handling.meta',
}

-- vehicles
data_file 'VEHICLE_LAYOUTS_FILE' 'vehicles/vehiclelayouts.meta'
data_file 'VEHICLE_METADATA_FILE' 'vehicles/vehicles.meta'
data_file 'CARCOLS_FILE' 'vehicles/carcols.meta'
data_file 'VEHICLE_VARIATION_FILE' 'vehicles/carvariations.meta'
data_file 'HANDLING_FILE' 'vehicles/handling.meta'

client_script 'names.lua'
