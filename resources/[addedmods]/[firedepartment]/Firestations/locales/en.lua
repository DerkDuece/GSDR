local Translations = {
    info = {
        ['Stored'] = 'Vehicle Stored',
        ['Too_far'] = 'too far away from Vehicle (Max 30M)',
        ['searched'] = 'Toner has already been searched',
        ['search'] = 'search ',
        ['Cancel'] = 'pager was cancel',
        ['Reports'] = 'Reports ',
        ['Not_Uniform'] = 'You are Not in Uniform',
        ['Right_Tool'] = "You don't have the right tool!",
        ['hose_back'] = " Put fire hose back in the truck",
		['PassAlarm'] = "Use /passreset to disable your active Alarm, then use /pass to disable your Pass Alarm.",
		['passpanic'] = "You need your Pass Alarm enabled to use the panic button.",
		['passreset'] = "Use /passreset to disable your panic button.",
    },
    error = {
        ['Invalid_tones'] = 'Invalid tones, please check your pagers',
        ['Sound_Sirens'] = 'Innvalid stations to sound, check your command arguments',
        ['whitelisted'] = 'You are not whitelisted to this command',
        ['turned_off'] = 'pager was turned off',
        ['examined'] = 'Tones are being examined, please wait',
        ['supplied'] = 'One or more supplied stations are already sounding!',
        ['Not_Connected'] = 'Not connected to hydrant!',
        ['connected'] = 'You have already connected to the hydrant!',
        ['Disconnected'] = 'Disconnected from hydrant',
        ['Not_OnDuty'] = 'You are not on duty!',
		['pass_enabled'] = "Your Pass Alarm is not enabled",
		['pass_enabled_1'] = "Your Pass Alarm is enabled, but not in Alarm; there is nothing to reset.",
		['pass_reset'] = "Pass Alarm reset. For future reference, during stage 1, simply moving will disable your alarm."
    },
    success = {
        ['turned_on'] = 'pager is activated',
        ['pagerset'] = 'pager set to: ',
        ['Is_Connected'] = 'Connected to hydrant!',
		['Is_Connected_Panic'] = 'Panic button activated!',
		['Is_pass_reset'] = 'Pass Alarm reset!'
    },
    progressbar = {
        ['oxygen_on'] = 'The Oxygen tank is activated',
        ['oxygen_off'] = 'The Oxygen tank is off',
        ['oxygen_empty'] = 'Oxygen Tank is Empty!',
        ['oxygen_low'] = 'Oxygen Tank is low!',
        ['oxygen_resupply'] = 'refill Oxygen Tank',
        ['Smoke'] = 'Smoke Inhalation!',
		['open_hydrant'] = 'Open hydrant',
		['close_hydrant'] = 'close fire hydrant'
    },
    turnout = {
        ['use_firegear'] = 'Putting on a fire gear..',
        ['remove_firegear'] = 'Take off your fire gear..',
        ['EquipedScba'] = 'You have equiped your SCBA!',
        ['remove.scba'] = 'Take off your SCBA..',
    },
    target = {
        ['Connect'] = 'Connect to Hydrant',
        ['Disconnect'] = 'Disconnect from Hydrant',
		['Gear'] = 'Turnout Gear Menu',
		['toolsmenu'] = 'Tools Menu',
		['Stash'] = 'Fire Stash',
		['Outfit'] = 'Change Outfit'
    },    
}
Lang = Locale:new({phrases = Translations, warnOnMissing = true})
