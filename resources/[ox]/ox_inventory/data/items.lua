return {
	['testburger'] = {
		label = 'Test Burger',
		weight = 220,
		degrade = 60,
		client = {
			status = { hunger = 200000 },
			anim = 'eating',
			prop = 'burger',
			usetime = 2500,
			export = 'ox_inventory_examples.testburger'
		},
		server = {
			export = 'ox_inventory_examples.testburger',
			test = 'what an amazingly delicious burger, amirite?'
		},
		buttons = {
			{
				label = 'Lick it',
				action = function(slot)
					print('You licked the burger')
				end
			},
			{
				label = 'Squeeze it',
				action = function(slot)
					print('You squeezed the burger :(')
				end
			}
		},
		consume = 0.3
	},

	['bandage'] = {
		label = 'Bandage',
		weight = 115,
		client = {
			anim = { dict = 'missheistdockssetup1clipboard@idle_a', clip = 'idle_a', flag = 49 },
			prop = { model = `prop_rolled_sock_02`, pos = vec3(-0.14, -0.14, -0.08), rot = vec3(-50.0, -50.0, 0.0) },
			disable = { move = true, car = true, combat = true },
			usetime = 2500,
		}
	},

	['black_money'] = {
		label = 'Dirty Money',
	},

	['burger'] = {
		label = 'Burger',
		weight = 220,
		client = {
			status = { hunger = 200000 },
			anim = 'eating',
			prop = 'burger',
			usetime = 2500,
			notification = 'You ate a delicious burger'
		},
	},

	['cola'] = {
		label = 'eCola',
		weight = 350,
		client = {
			status = { thirst = 200000 },
			anim = { dict = 'mp_player_intdrink', clip = 'loop_bottle' },
			prop = { model = `prop_ecola_can`, pos = vec3(0.01, 0.01, 0.06), rot = vec3(5.0, 5.0, -180.5) },
			usetime = 2500,
			notification = 'You quenched your thirst with cola'
		}
	},

	['parachute'] = {
		label = 'Parachute',
		weight = 8000,
		stack = false,
		client = {
			anim = { dict = 'clothingshirt', clip = 'try_shirt_positive_d' },
			usetime = 1500
		}
	},

	['garbage'] = {
		label = 'Garbage',
	},

	['paperbag'] = {
		label = 'Paper Bag',
		weight = 1,
		stack = false,
		close = false,
		consume = 0
	},

	['identification'] = {
		label = 'Identification',
	},

	['panties'] = {
		label = 'Knickers',
		weight = 10,
		consume = 0,
		client = {
			status = { thirst = -100000, stress = -25000 },
			anim = { dict = 'mp_player_intdrink', clip = 'loop_bottle' },
			prop = { model = `prop_cs_panties_02`, pos = vec3(0.03, 0.0, 0.02), rot = vec3(0.0, -13.5, -1.5) },
			usetime = 2500,
		}
	},

	['lockpick'] = {
		label = 'Lockpick',
		weight = 160,
	},

	['phone'] = {
		label = 'Phone',
		weight = 190,
		stack = false,
		consume = 0,
		client = {
			add = function(total)
				if total > 0 then
					pcall(function() return exports.npwd:setPhoneDisabled(false) end)
				end
			end,

			remove = function(total)
				if total < 1 then
					pcall(function() return exports.npwd:setPhoneDisabled(true) end)
				end
			end
		}
	},

	['money'] = {
		label = 'Money',
	},

	['mustard'] = {
		label = 'Mustard',
		weight = 500,
		client = {
			status = { hunger = 25000, thirst = 25000 },
			anim = { dict = 'mp_player_intdrink', clip = 'loop_bottle' },
			prop = { model = `prop_food_mustard`, pos = vec3(0.01, 0.0, -0.07), rot = vec3(1.0, 1.0, -1.5) },
			usetime = 2500,
			notification = 'You.. drank mustard'
		}
	},

	['water'] = {
		label = 'Water',
		weight = 500,
		client = {
			status = { thirst = 200000 },
			anim = { dict = 'mp_player_intdrink', clip = 'loop_bottle' },
			prop = { model = `prop_ld_flow_bottle`, pos = vec3(0.03, 0.03, 0.02), rot = vec3(0.0, 0.0, -1.5) },
			usetime = 2500,
			cancel = true,
			notification = 'You drank some refreshing water'
		}
	},

	['radio'] = {
		label = 'Radio',
		weight = 1000,
		stack = false,
		allowArmed = true
	},

	['armour'] = {
		label = 'Bulletproof Vest',
		weight = 3000,
		stack = false,
		client = {
			anim = { dict = 'clothingshirt', clip = 'try_shirt_positive_d' },
			usetime = 3500
		}
	},

	['clothing'] = {
		label = 'Clothing',
		consume = 0,
	},

	['mastercard'] = {
		label = 'Mastercard',
		stack = false,
		weight = 10,
	},

	['scrapmetal'] = {
		label = 'Scrap Metal',
		weight = 80,
	},
	['keys'] = {
		label = 'Vehicle Key',
		weight = 0,
		stack = false,
		close = true,
		description = 'Vehicle Key'
	},
	
	['fakeplate'] = {
		label = 'Fake Plate',
		weight = 220,
		client = {
			export = 'renzu_garage.Fakeplate',
		},
	},
	['playerbooth'] = {
		label = 'Market Booth Stall',
		weight = 0,
		client = {
			anim = { dict = 'mini@repair', clip = 'fixing_a_ped' },
			usetime = 2500,
			notification = 'Setup your Stall',
			export = 'renzu_shops.playerbooth'
		},
	},
	['hotdogsandwich'] = {
		label = 'Hot Dog Sandwich',
		weight = 350,
		client = {
			status = { hunger = 200000 },
			anim = 'eating',
			prop = 'burger',
			usetime = 2500
		},
	},
	['hotdog'] = {
		label = 'Hotdog',
		weight = 50
	},
	['bread'] = {
		label = 'Bread',
		weight = 50
	},
	['tomatosauce'] = {
		label = 'Tomato Sauce',
		weight = 50
	},
	['cheese'] = {
		label = 'Cheese',
		weight = 50
	},
	['burgerpatty'] = {
		label = 'Burger Patty',
		weight = 50
	},
	['burgerpatty'] = {
		label = 'Burger Patty',
		weight = 50
	},
	['sprunk'] = {
		label = 'Sprunk',
		weight = 50
	},
	['taco'] = {
		label = 'Taco',
		weight = 50
	},
	['tacoshells'] = {
		label = 'Taco Shells',
		weight = 50
	},
	['ground_beef'] = {
		label = 'Ground Beef',
		weight = 50
	},
	['lettuce'] = {
		label = 'Lettuce',
		weight = 50
	},
	['lettuce'] = {
		label = 'Lettuce',
		weight = 50
	},
	['tomato'] = {
		label = 'Tomato',
		weight = 50
	},
	['pasta'] = {
		label = 'Pasta',
		weight = 50
	},
	['onion'] = {
		label = 'Onion',
		weight = 50
	},
	['mayonaise'] = {
		label = 'Mayonaise',
		weight = 50
	},
	['martini'] = {
		label = 'Martini',
		weight = 50
	},
	['chicken'] = {
		label = 'Chicken',
		weight = 50
	},
	['beef'] = {
		label = 'Beef',
		weight = 50
	},
	['fish'] = {
		label = 'Fish',
		weight = 50
	},
	['tacosauce'] = {
		label = 'Tacosauce',
		weight = 50
	},
	['latte'] = {
		label = 'Latte',
		weight = 50
	},
	['hotsauce'] = {
		label = 'Hot Sauce',
		weight = 50
	},
	['item'] = {
		label = 'Default Item',
		weight = 50
	},
	['vehicle_shell'] = {
		label = 'vehicle_shell',
		weight = 1,
		stack = true,
		close = true,
	},
	
	['vehicle_blueprints'] = {
		label = 'vehicle_blueprints',
		weight = 5,
		stack = true,
		close = true,
	},
	
	['door'] = {
		label = 'door',
		weight = 325,
		stack = true,
		close = true,
	},
	['bonnet'] = {
		label = 'bonnet',
		weight = 325,
		stack = true,
		close = true,
	},
	['trunk'] = {
		label = 'trunk',
		weight = 325,
		stack = true,
		close = true,
	},
	['wheel'] = {
		label = 'wheel',
		weight = 325,
		stack = true,
		close = true,
	},
	['seat'] = {
		label = 'seat',
		weight = 325,
		stack = true,
		close = true,
	},
	['engine'] = {
		label = 'engine',
		weight = 325,
		stack = true,
		close = true,
	},
	['transmition'] = {
		label = 'transmition',
		weight = 325,
		stack = true,
		close = true,
	},
	['exhaust'] = {
		label = 'exhaust',
		weight = 325,
		stack = true,
		close = false,
	},
	['brake'] = {
		label = 'brake',
		weight = 325,
		stack = true,
		close = true,
	},
	
	['paint'] = {
		label = 'paint',
		weight = 10,
		stack = true,
		close = true,
	},
	
	---• NOT SURE, IF THIS NEED TO BE IN THERE •---
	['paint_white'] = {
		label = 'white',
		weight = 10,
		stack = true,
		close = true,
	},
	
	['paint_red'] = {
		label = 'red',
		weight = 10,
		stack = true,
		close = true,
	},
	
	['paint_pink'] = {
		label = 'pink',
		weight = 10,
		stack = true,
		close = true,
	},
	
	['paint_blue'] = {
		label = 'blue',
		weight = 10,
		stack = true,
		close = false,
	},
	
	['paint_yellow'] = {
		label = 'yellow',
		weight = 10,
		stack = true,
		close = false,
	},
	
	['paint_green'] = {
		label = 'green',
		weight = 10,
		stack = true,
		close = false,
	},
	
	['paint_orange'] = {
		label = 'orange',
		weight = 10,
		stack = true,
		close = false,
	},
	
	['paint_brown'] = {
		label = 'brown',
		weight = 10,
		stack = true,
		close = false,
	},
	
	['paint_purple'] = {
		label = 'purple',
		weight = 10,
		stack = true,
		close = false,
	},
	
	['paint_grey'] = {
		label = 'grey',
		weight = 10,
		stack = true,
		close = false,
	},
	
	['paint_black'] = {
		label = 'black',
		weight = 10,
		stack = true,
		close = false,
	},
	['repairparts'] = {
		label = 'Repair Engine Parts',
		weight = 250,
		stack = false,
		close = true,
	},
	
	['street_tires'] = {
		label = 'Street Tires',
		weight = 250,
		stack = true,
		close = true,
		client = {
			anim = { dict = 'mini@repair', clip = 'fixing_a_player' },
			usetime = 5500,
			export = 'renzu_tuners.useItem'
		}
	},
	['sports_tires'] = {
		label = 'Sports Tires',
		weight = 250,
		stack = true,
		close = true,
		client = {
			anim = { dict = 'mini@repair', clip = 'fixing_a_player' },
			usetime = 5500,
			export = 'renzu_tuners.useItem'
		}
	},
	['racing_tires'] = {
		label = 'Racing Tires',
		weight = 250,
		stack = true,
		close = true,
		client = {
			anim = { dict = 'mini@repair', clip = 'fixing_a_player' },
			usetime = 5500,
			export = 'renzu_tuners.useItem'
		}
	},
	['drag_tires'] = {
		label = 'Drag Tires',
		weight = 250,
		stack = true,
		close = true,
		client = {
			anim = { dict = 'mini@repair', clip = 'fixing_a_player' },
			usetime = 5500,
			export = 'renzu_tuners.useItem'
		}
	},
	
	['transmition_clutch'] = {
		label = 'OEM Transmission Clutch',
		weight = 100,
		stack = true,
		client = {
			
			anim = { dict = 'mini@repair', clip = 'fixing_a_ped' },
			usetime = 5500,
			export = 'renzu_tuners.useItem'
	
		}
	},
	
	['engine_flywheel'] = {
		label = 'OEM Flywheel',
		weight = 100,
		stack = true,
		client = {
			
			anim = { dict = 'mini@repair', clip = 'fixing_a_ped' },
			usetime = 5500,
			export = 'renzu_tuners.useItem'
	
		}
	},
	
	['engine_oil'] = {
		label = 'OEM Engine Oil',
		weight = 100,
		stack = true,
		client = {
			
			anim = { dict = 'mini@repair', clip = 'fixing_a_ped' },
			usetime = 5500,
			export = 'renzu_tuners.useItem'
	
		}
	},
	
	['engine_sparkplug'] = {
		label = 'Sparkplugs Kit',
		weight = 50,
		stack = true,
		client = {
			--status = { hunger = -10000, thirst = -10000, stress = -100000 },
			anim = { dict = 'mini@repair', clip = 'fixing_a_ped' },
			usetime = 5500,
			export = 'renzu_tuners.useItem'
	
		}
	},
	
	['engine_gasket'] = {
		label = 'OEM Head Gasket Kit',
		weight = 50,
		stack = true,
		client = {
			--status = { hunger = -10000, thirst = -10000, stress = -100000 },
			anim = { dict = 'mini@repair', clip = 'fixing_a_ped' },
			usetime = 5500,
			export = 'renzu_tuners.useItem'
	
		}
	},
	
	['engine_airfilter'] = {
		label = 'OEM Intake Air Filter',
		weight = 50,
		stack = true,
		client = {
			--status = { hunger = -20000, thirst = -30000, stress = -100000 },
			anim = { dict = 'mini@repair', clip = 'fixing_a_ped' },
			usetime = 5500,
			export = 'renzu_tuners.useItem'
	
		}
	},
	
	['engine_fuelinjector'] = {
		label = 'OEM Fuel Injectors',
		weight = 150,
		stack = true,
		client = {
			--status = { hunger = -20000, thirst = -30000, stress = -100000 },
			anim = { dict = 'mini@repair', clip = 'fixing_a_ped' },
			usetime = 5500,
			export = 'renzu_tuners.useItem'
	
		}
	},
	['engine_pistons'] = {
		label = 'OEM Pistons Kit',
		weight = 350,
		stack = true,
		client = {
			
			anim = { dict = 'mini@repair', clip = 'fixing_a_ped' },
			usetime = 5500,
			export = 'renzu_tuners.useItem'
	
		}
	},
	
	['engine_connectingrods'] = {
		label = 'OEM Connecting Rods Kit',
		weight = 350,
		stack = true,
		client = {
			
			anim = { dict = 'mini@repair', clip = 'fixing_a_ped' },
			usetime = 5500,
			export = 'renzu_tuners.useItem'
	
		}
	},
	
	['engine_valves'] = {
		label = 'OEM Head Valves Kit',
		weight = 350,
		stack = true,
		client = {
			
			anim = { dict = 'mini@repair', clip = 'fixing_a_ped' },
			usetime = 5500,
			export = 'renzu_tuners.useItem'
	
		}
	},
	
	['engine_block'] = {
		label = 'OEM Block',
		weight = 350,
		stack = true,
		client = {
			
			anim = { dict = 'mini@repair', clip = 'fixing_a_ped' },
			usetime = 5500,
			export = 'renzu_tuners.useItem'
	
		}
	},
	
	['engine_crankshaft'] = {
		label = 'OEM CrankShaft',
		weight = 350,
		stack = true,
		client = {
			
			anim = { dict = 'mini@repair', clip = 'fixing_a_ped' },
			usetime = 5500,
			export = 'renzu_tuners.useItem'
		}
	},
	
	['engine_camshaft'] = {
		label = 'OEM Camshaft',
		weight = 350,
		stack = true,
		client = {
			
			anim = { dict = 'mini@repair', clip = 'fixing_a_ped' },
			usetime = 5500,
			export = 'renzu_tuners.useItem'
		}
	},
	
	
	
	 
	
	['ecu'] = {
		label = 'ecu',
		weight = 20,
		stack = true,
		close = true,
		description = nil,
	},
	
	['drift_tires'] = {
		label = 'Drift Tires',
		weight = 250,
		stack = true,
		close = true,
		client = {
			anim = { dict = 'mini@repair', clip = 'fixing_a_player' },
			usetime = 5500,
			export = 'renzu_tuners.useItem'
		}
	},
	
	
	['lsdf'] = {
		label = 'Limited Slip Differential (Front)',
		weight = 250,
		stack = true,
		close = true,
		client = {
			anim = { dict = 'mini@repair', clip = 'fixing_a_player' },
			usetime = 5500,
			export = 'renzu_tuners.useItem'
		}
	},
	
	['lsdr'] = {
		label = 'Limited Slip Differential (Rear)',
		weight = 250,
		stack = true,
		close = true,
		client = {
			anim = { dict = 'mini@repair', clip = 'fixing_a_player' },
			usetime = 5500,
			export = 'renzu_tuners.useItem'
		}
	},
	
	['tcs'] = {
		label = 'Traction Control System (TCS)',
		weight = 250,
		stack = true,
		close = true,
		client = {
			anim = { dict = 'mini@repair', clip = 'fixing_a_player' },
			usetime = 5500,
			export = 'renzu_tuners.useItem'
		}
	},
	
	['esc'] = {
		label = 'Stability Control System (ESC)',
		weight = 250,
		stack = true,
		close = true,
		client = {
			anim = { dict = 'mini@repair', clip = 'fixing_a_player' },
			usetime = 5500,
			export = 'renzu_tuners.useItem'
		}
	},
	
	['closerationgears'] = {
		label = 'Close Ratio Gears',
		weight = 250,
		stack = true,
		close = true,
		client = {
			anim = { dict = 'mini@repair', clip = 'fixing_a_player' },
			usetime = 5500,
			export = 'renzu_tuners.useItem'
		}
	},
	
	['cvttranny'] = {
		label = 'CVT Transmission',
		weight = 250,
		stack = true,
		close = true,
		client = {
			anim = { dict = 'mini@repair', clip = 'fixing_a_player' },
			usetime = 5500,
			export = 'renzu_tuners.useItem'
		}
	},
	
	['abs'] = {
		label = 'Anti-lock braking System',
		weight = 250,
		stack = true,
		close = true,
		client = {
			anim = { dict = 'mini@repair', clip = 'fixing_a_player' },
			usetime = 5500,
			export = 'renzu_tuners.useItem'
		}
	},
	
	['axletorsionfront'] = {
		label = 'Axle Torsion (Front)',
		weight = 250,
		stack = true,
		close = true,
		client = {
			anim = { dict = 'mini@repair', clip = 'fixing_a_player' },
			usetime = 5500,
			export = 'renzu_tuners.useItem'
		}
	},
	
	['axletorsionrear'] = {
		label = 'Axle Torsion (Rear)',
		weight = 250,
		stack = true,
		close = true,
		client = {
			anim = { dict = 'mini@repair', clip = 'fixing_a_player' },
			usetime = 5500,
			export = 'renzu_tuners.useItem'
		}
	},
	
	['axlesolidfront'] = {
		label = 'Axle Solid (Front)',
		weight = 250,
		stack = true,
		close = true,
		client = {
			anim = { dict = 'mini@repair', clip = 'fixing_a_player' },
			usetime = 5500,
			export = 'renzu_tuners.useItem'
		}
	},
	
	['axlesolidrear'] = {
		label = 'Axle Solid (Rear)',
		weight = 250,
		stack = true,
		close = true,
		client = {
			anim = { dict = 'mini@repair', clip = 'fixing_a_player' },
			usetime = 5500,
			export = 'renzu_tuners.useItem'
		}
	},
	
	['kers'] = {
		label = 'Kinetic Energy Recovery System (KERS)',
		weight = 250,
		stack = true,
		close = true,
		client = {
			anim = { dict = 'mini@repair', clip = 'fixing_a_player' },
			usetime = 5500,
			export = 'renzu_tuners.useItem'
		}
	},
	
	['offroadtune1'] = {
		label = 'Offroad Tune 1',
		weight = 250,
		stack = true,
		close = true,
		client = {
			anim = { dict = 'mini@repair', clip = 'fixing_a_player' },
			usetime = 5500,
			export = 'renzu_tuners.useItem'
		}
	},
	
	['offroadtune2'] = {
		label = 'Offroad Tune 2',
		weight = 250,
		stack = true,
		close = true,
		client = {
			anim = { dict = 'mini@repair', clip = 'fixing_a_player' },
			usetime = 5500,
			export = 'renzu_tuners.useItem'
		}
	},
	
	['stanced'] = {
		label = 'Stanced Tune',
		weight = 250,
		stack = true,
		close = true,
		client = {
			anim = { dict = 'mini@repair', clip = 'fixing_a_player' },
			usetime = 5500,
			export = 'renzu_tuners.useItem'
		}
	},
	
	['frontwheeldrive'] = {
		label = 'Front Wheel Drivetrain',
		weight = 250,
		stack = true,
		close = true,
		client = {
			anim = { dict = 'mini@repair', clip = 'fixing_a_player' },
			usetime = 5500,
			export = 'renzu_tuners.useItem'
		}
	},
	
	['allwheeldrive'] = {
		label = 'All Wheel Drivetrain',
		weight = 250,
		stack = true,
		close = true,
		client = {
			anim = { dict = 'mini@repair', clip = 'fixing_a_player' },
			usetime = 5500,
			export = 'renzu_tuners.useItem'
		}
	},
	
	['rearwheeldrive'] = {
		label = 'Rear Wheel Drivetrain',
		weight = 250,
		stack = true,
		close = true,
		client = {
			anim = { dict = 'mini@repair', clip = 'fixing_a_player' },
			usetime = 5500,
			export = 'renzu_tuners.useItem'
		}
	},
	
	['oem_brakes'] = {
		label = 'OEM Brakes',
		weight = 250,
		stack = true,
		close = true,
		client = {
			anim = { dict = 'mini@repair', clip = 'fixing_a_player' },
			usetime = 5500,
			export = 'renzu_tuners.useItem'
		}
	},
	
	['oem_suspension'] = {
		label = 'OEM Suspension',
		weight = 250,
		stack = true,
		close = true,
		client = {
			anim = { dict = 'mini@repair', clip = 'fixing_a_player' },
			usetime = 5500,
			export = 'renzu_tuners.useItem'
		}
	},
	
	['oem_gearbox'] = {
		label = 'OEM Gear Box',
		weight = 250,
		stack = true,
		close = true,
		client = {
			anim = { dict = 'mini@repair', clip = 'fixing_a_player' },
			usetime = 5500,
			export = 'renzu_tuners.useItem'
		}
	},
	
	
	['elite_brakes'] = {
		label = 'Elite Brakes',
		weight = 250,
		stack = true,
		close = true,
		client = {
			anim = { dict = 'mini@repair', clip = 'fixing_a_player' },
			usetime = 5500,
			export = 'renzu_tuners.useItem'
		}
	},
	
	['elite_suspension'] = {
		label = 'Elite Suspension',
		weight = 250,
		stack = true,
		close = true,
		client = {
			anim = { dict = 'mini@repair', clip = 'fixing_a_player' },
			usetime = 5500,
			export = 'renzu_tuners.useItem'
		}
	},
	
	['elite_gearbox'] = {
		label = 'Elite Gear Box',
		weight = 250,
		stack = true,
		close = true,
		client = {
			anim = { dict = 'mini@repair', clip = 'fixing_a_player' },
			usetime = 5500,
			export = 'renzu_tuners.useItem'
		}
	},
	
	['elite_clutch'] = {
		label = 'Elite Transmission Clutch',
		weight = 100,
		stack = true,
		client = {
			
			anim = { dict = 'mini@repair', clip = 'fixing_a_ped' },
			usetime = 5500,
			export = 'renzu_tuners.useItem'
	
		}
	},
	
	['elite_flywheel'] = {
		label = 'Elite Flywheel',
		weight = 100,
		stack = true,
		client = {
			
			anim = { dict = 'mini@repair', clip = 'fixing_a_ped' },
			usetime = 5500,
			export = 'renzu_tuners.useItem'
	
		}
	},
	
	['elite_oil'] = {
		label = 'Elite Oil',
		weight = 100,
		stack = true,
		client = {
			
			anim = { dict = 'mini@repair', clip = 'fixing_a_ped' },
			usetime = 5500,
			export = 'renzu_tuners.useItem'
	
		}
	},
	
	['elite_sparkplug'] = {
		label = 'Elite Sparkplugs Kit',
		weight = 50,
		stack = true,
		client = {
			
			anim = { dict = 'mini@repair', clip = 'fixing_a_ped' },
			usetime = 5500,
			export = 'renzu_tuners.useItem'
	
		}
	},
	
	['elite_gasket'] = {
		label = 'Elite Head Gasket Kit',
		weight = 50,
		stack = true,
		client = {
			
			anim = { dict = 'mini@repair', clip = 'fixing_a_ped' },
			usetime = 5500,
			export = 'renzu_tuners.useItem'
	
		}
	},
	
	['elite_airfilter'] = {
		label = 'Elite Intake Air Filter',
		weight = 50,
		stack = true,
		client = {
			
			anim = { dict = 'mini@repair', clip = 'fixing_a_ped' },
			usetime = 5500,
			export = 'renzu_tuners.useItem'
	
		}
	},
	
	['elite_fuelinjector'] = {
		label = 'Elite Fuel Injectors',
		weight = 150,
		stack = true,
		client = {
			
			anim = { dict = 'mini@repair', clip = 'fixing_a_ped' },
			usetime = 5500,
			export = 'renzu_tuners.useItem'
	
		}
	},
	['elite_pistons'] = {
		label = 'Elite Pistons Kit',
		weight = 350,
		stack = true,
		client = {
			
			anim = { dict = 'mini@repair', clip = 'fixing_a_ped' },
			usetime = 5500,
			export = 'renzu_tuners.useItem'
	
		}
	},
	
	['elite_connectingrods'] = {
		label = 'Elite Connecting Rods Kit',
		weight = 350,
		stack = true,
		client = {
			
			anim = { dict = 'mini@repair', clip = 'fixing_a_ped' },
			usetime = 5500,
			export = 'renzu_tuners.useItem'
	
		}
	},
	
	['elite_valves'] = {
		label = 'Elite Head Valves Kit',
		weight = 350,
		stack = true,
		client = {
			
			anim = { dict = 'mini@repair', clip = 'fixing_a_ped' },
			usetime = 5500,
			export = 'renzu_tuners.useItem'
	
		}
	},
	
	['elite_block'] = {
		label = 'Elite Block',
		weight = 350,
		stack = true,
		client = {
			
			anim = { dict = 'mini@repair', clip = 'fixing_a_ped' },
			usetime = 5500,
			export = 'renzu_tuners.useItem'
	
		}
	},
	
	['elite_crankshaft'] = {
		label = 'Elite CrankShaft',
		weight = 350,
		stack = true,
		client = {
			
			anim = { dict = 'mini@repair', clip = 'fixing_a_ped' },
			usetime = 5500,
			export = 'renzu_tuners.useItem'
		}
	},
	
	['elite_camshaft'] = {
		label = 'Elite Camshaft',
		weight = 350,
		stack = true,
		client = {
			
			anim = { dict = 'mini@repair', clip = 'fixing_a_ped' },
			usetime = 5500,
			export = 'renzu_tuners.useItem'
		}
	},
	
	['pro_brakes'] = {
		label = 'Pro Brakes',
		weight = 250,
		stack = true,
		close = true,
		client = {
			anim = { dict = 'mini@repair', clip = 'fixing_a_player' },
			usetime = 5500,
			export = 'renzu_tuners.useItem'
		}
	},
	
	['pro_suspension'] = {
		label = 'Pro Suspension',
		weight = 250,
		stack = true,
		close = true,
		client = {
			anim = { dict = 'mini@repair', clip = 'fixing_a_player' },
			usetime = 5500,
			export = 'renzu_tuners.useItem'
		}
	},
	
	['pro_gearbox'] = {
		label = 'Pro Gear Box',
		weight = 250,
		stack = true,
		close = true,
		client = {
			anim = { dict = 'mini@repair', clip = 'fixing_a_player' },
			usetime = 5500,
			export = 'renzu_tuners.useItem'
		}
	},
	
	['pro_clutch'] = {
		label = 'Pro Transmission Clutch',
		weight = 100,
		stack = true,
		client = {
			
			anim = { dict = 'mini@repair', clip = 'fixing_a_ped' },
			usetime = 5500,
			export = 'renzu_tuners.useItem'
	
		}
	},
	
	['pro_flywheel'] = {
		label = 'Pro Flywheel',
		weight = 100,
		stack = true,
		client = {
			
			anim = { dict = 'mini@repair', clip = 'fixing_a_ped' },
			usetime = 5500,
			export = 'renzu_tuners.useItem'
	
		}
	},
	
	['pro_oil'] = {
		label = 'Pro Oil',
		weight = 100,
		stack = true,
		client = {
			
			anim = { dict = 'mini@repair', clip = 'fixing_a_ped' },
			usetime = 5500,
			export = 'renzu_tuners.useItem'
	
		}
	},
	
	['pro_sparkplug'] = {
		label = 'Pro Sparkplugs Kit',
		weight = 50,
		stack = true,
		client = {
			
			anim = { dict = 'mini@repair', clip = 'fixing_a_ped' },
			usetime = 5500,
			export = 'renzu_tuners.useItem'
	
		}
	},
	
	['pro_gasket'] = {
		label = 'Pro Head Gasket Kit',
		weight = 50,
		stack = true,
		client = {
			
			anim = { dict = 'mini@repair', clip = 'fixing_a_ped' },
			usetime = 5500,
			export = 'renzu_tuners.useItem'
	
		}
	},
	
	['pro_airfilter'] = {
		label = 'Pro Intake Air Filter',
		weight = 50,
		stack = true,
		client = {
			
			anim = { dict = 'mini@repair', clip = 'fixing_a_ped' },
			usetime = 5500,
			export = 'renzu_tuners.useItem'
	
		}
	},
	
	['pro_fuelinjector'] = {
		label = 'Pro Fuel Injectors',
		weight = 150,
		stack = true,
		client = {
			
			anim = { dict = 'mini@repair', clip = 'fixing_a_ped' },
			usetime = 5500,
			export = 'renzu_tuners.useItem'
	
		}
	},
	['pro_pistons'] = {
		label = 'Pro Pistons Kit',
		weight = 350,
		stack = true,
		client = {
			
			anim = { dict = 'mini@repair', clip = 'fixing_a_ped' },
			usetime = 5500,
			export = 'renzu_tuners.useItem'
	
		}
	},
	
	['pro_connectingrods'] = {
		label = 'Pro Connecting Rods Kit',
		weight = 350,
		stack = true,
		client = {
			
			anim = { dict = 'mini@repair', clip = 'fixing_a_ped' },
			usetime = 5500,
			export = 'renzu_tuners.useItem'
	
		}
	},
	
	['pro_valves'] = {
		label = 'Pro Head Valves Kit',
		weight = 350,
		stack = true,
		client = {
			
			anim = { dict = 'mini@repair', clip = 'fixing_a_ped' },
			usetime = 5500,
			export = 'renzu_tuners.useItem'
	
		}
	},
	
	['pro_block'] = {
		label = 'Pro Block',
		weight = 350,
		stack = true,
		client = {
			
			anim = { dict = 'mini@repair', clip = 'fixing_a_ped' },
			usetime = 5500,
			export = 'renzu_tuners.useItem'
	
		}
	},
	
	['pro_crankshaft'] = {
		label = 'Pro CrankShaft',
		weight = 350,
		stack = true,
		client = {
			
			anim = { dict = 'mini@repair', clip = 'fixing_a_ped' },
			usetime = 5500,
			export = 'renzu_tuners.useItem'
		}
	},
	
	['pro_camshaft'] = {
		label = 'Pro Camshaft',
		weight = 350,
		stack = true,
		client = {
			
			anim = { dict = 'mini@repair', clip = 'fixing_a_ped' },
			usetime = 5500,
			export = 'renzu_tuners.useItem'
		}
	},
	
	
	['racing_brakes'] = {
		label = 'Racing Brakes',
		weight = 250,
		stack = true,
		close = true,
		client = {
			anim = { dict = 'mini@repair', clip = 'fixing_a_player' },
			usetime = 5500,
			export = 'renzu_tuners.useItem'
		}
	},
	
	['racing_suspension'] = {
		label = 'Racing Suspension',
		weight = 250,
		stack = true,
		close = true,
		client = {
			anim = { dict = 'mini@repair', clip = 'fixing_a_player' },
			usetime = 5500,
			export = 'renzu_tuners.useItem'
		}
	},
	
	['racing_gearbox'] = {
		label = 'Racing Gear Box',
		weight = 250,
		stack = true,
		close = true,
		client = {
			anim = { dict = 'mini@repair', clip = 'fixing_a_player' },
			usetime = 5500,
			export = 'renzu_tuners.useItem'
		}
	},
	
	['racing_clutch'] = {
		label = 'Racing Transmission Clutch',
		weight = 100,
		stack = true,
		client = {
			--status = { hunger = -150000, thirst = -50000, stress = -100000 },
			anim = { dict = 'mini@repair', clip = 'fixing_a_ped' },
			usetime = 5500,
			export = 'renzu_tuners.useItem'
	
		}
	},
	
	['racing_flywheel'] = {
		label = 'Racing Flywheel',
		weight = 100,
		stack = true,
		client = {
			--status = { hunger = -150000, thirst = -50000, stress = -100000 },
			anim = { dict = 'mini@repair', clip = 'fixing_a_ped' },
			usetime = 5500,
			export = 'renzu_tuners.useItem'
	
		}
	},
	
	['racing_oil'] = {
		label = 'Racing Oil',
		weight = 100,
		stack = true,
		client = {
			--status = { hunger = -150000, thirst = -50000, stress = -100000 },
			anim = { dict = 'mini@repair', clip = 'fixing_a_ped' },
			usetime = 5500,
			export = 'renzu_tuners.useItem'
	
		}
	},
	
	['racing_sparkplug'] = {
		label = 'Racing Sparkplugs Kit',
		weight = 50,
		stack = true,
		client = {
			--status = { hunger = -10000, thirst = -10000, stress = -100000 },
			anim = { dict = 'mini@repair', clip = 'fixing_a_ped' },
			usetime = 5500,
			export = 'renzu_tuners.useItem'
	
		}
	},
	
	['racing_gasket'] = {
		label = 'Racing Head Gasket Kit',
		weight = 50,
		stack = true,
		client = {
			--status = { hunger = -10000, thirst = -10000, stress = -100000 },
			anim = { dict = 'mini@repair', clip = 'fixing_a_ped' },
			usetime = 5500,
			export = 'renzu_tuners.useItem'
	
		}
	},
	
	['racing_airfilter'] = {
		label = 'Racing Intake Air Filter',
		weight = 50,
		stack = true,
		client = {
			--status = { hunger = -20000, thirst = -30000, stress = -100000 },
			anim = { dict = 'mini@repair', clip = 'fixing_a_ped' },
			usetime = 5500,
			export = 'renzu_tuners.useItem'
	
		}
	},
	
	['racing_fuelinjector'] = {
		label = 'Racing Fuel Injectors',
		weight = 150,
		stack = true,
		client = {
			--status = { hunger = -20000, thirst = -30000, stress = -100000 },
			anim = { dict = 'mini@repair', clip = 'fixing_a_ped' },
			usetime = 5500,
			export = 'renzu_tuners.useItem'
	
		}
	},
	['racing_pistons'] = {
		label = 'Racing Pistons Kit',
		weight = 350,
		stack = true,
		client = {
			--status = { hunger = -110000, thirst = -1130000, stress = -200000 },
			anim = { dict = 'mini@repair', clip = 'fixing_a_ped' },
			usetime = 5500,
			export = 'renzu_tuners.useItem'
	
		}
	},
	
	['racing_connectingrods'] = {
		label = 'Racing Connecting Rods Kit',
		weight = 350,
		stack = true,
		client = {
			--status = { hunger = -110000, thirst = -1130000, stress = -200000 },
			anim = { dict = 'mini@repair', clip = 'fixing_a_ped' },
			usetime = 5500,
			export = 'renzu_tuners.useItem'
	
		}
	},
	
	['racing_valves'] = {
		label = 'Racing Head Valves Kit',
		weight = 350,
		stack = true,
		client = {
			--status = { hunger = -110000, thirst = -1130000, stress = -200000 },
			anim = { dict = 'mini@repair', clip = 'fixing_a_ped' },
			usetime = 5500,
			export = 'renzu_tuners.useItem'
	
		}
	},
	
	['racing_block'] = {
		label = 'Racing Block',
		weight = 350,
		stack = true,
		client = {
			--status = { hunger = -110000, thirst = -1130000, stress = -200000 },
			anim = { dict = 'mini@repair', clip = 'fixing_a_ped' },
			usetime = 5500,
			export = 'renzu_tuners.useItem'
	
		}
	},
	
	['racing_crankshaft'] = {
		label = 'Racing CrankShaft',
		weight = 350,
		stack = true,
		client = {
			--status = { hunger = -110000, thirst = -1130000, stress = -200000 },
			anim = { dict = 'mini@repair', clip = 'fixing_a_ped' },
			usetime = 5500,
			export = 'renzu_tuners.useItem'
		}
	},
	
	['racing_camshaft'] = {
		label = 'Racing Camshaft',
		weight = 350,
		stack = true,
		client = {
			--status = { hunger = -110000, thirst = -1130000, stress = -200000 },
			anim = { dict = 'mini@repair', clip = 'fixing_a_ped' },
			usetime = 5500,
			export = 'renzu_tuners.useItem'
		}
	},
	
	
	['ultimate_brakes'] = {
		label = 'Ultimate Brakes',
		weight = 250,
		stack = true,
		close = true,
		client = {
			anim = { dict = 'mini@repair', clip = 'fixing_a_player' },
			usetime = 5500,
			export = 'renzu_tuners.useItem'
		}
	},
	
	['ultimate_suspension'] = {
		label = 'Ultimate Suspension',
		weight = 250,
		stack = true,
		close = true,
		client = {
			anim = { dict = 'mini@repair', clip = 'fixing_a_player' },
			usetime = 5500,
			export = 'renzu_tuners.useItem'
		}
	},
	
	['ultimate_gearbox'] = {
		label = 'Ultimate Gear Box',
		weight = 250,
		stack = true,
		close = true,
		client = {
			anim = { dict = 'mini@repair', clip = 'fixing_a_player' },
			usetime = 5500,
			export = 'renzu_tuners.useItem'
		}
	},
	
	['ultimate_clutch'] = {
		label = 'Ultimate Transmission Clutch',
		weight = 100,
		stack = true,
		client = {
			
			anim = { dict = 'mini@repair', clip = 'fixing_a_ped' },
			usetime = 5500,
			export = 'renzu_tuners.useItem'
	
		}
	},
	
	['ultimate_flywheel'] = {
		label = 'Ultimate Flywheel',
		weight = 100,
		stack = true,
		client = {
			
			anim = { dict = 'mini@repair', clip = 'fixing_a_ped' },
			usetime = 5500,
			export = 'renzu_tuners.useItem'
	
		}
	},
	
	['ultimate_oil'] = {
		label = 'Ultimate Oil',
		weight = 100,
		stack = true,
		client = {
			
			anim = { dict = 'mini@repair', clip = 'fixing_a_ped' },
			usetime = 5500,
			export = 'renzu_tuners.useItem'
	
		}
	},
	
	['ultimate_sparkplug'] = {
		label = 'Ultimate Sparkplugs Kit',
		weight = 50,
		stack = true,
		client = {
			
			anim = { dict = 'mini@repair', clip = 'fixing_a_ped' },
			usetime = 5500,
			export = 'renzu_tuners.useItem'
	
		}
	},
	
	['ultimate_gasket'] = {
		label = 'Ultimate Head Gasket Kit',
		weight = 50,
		stack = true,
		client = {
			
			anim = { dict = 'mini@repair', clip = 'fixing_a_ped' },
			usetime = 5500,
			export = 'renzu_tuners.useItem'
	
		}
	},
	
	['ultimate_airfilter'] = {
		label = 'Ultimate Intake Air Filter',
		weight = 50,
		stack = true,
		client = {
			
			anim = { dict = 'mini@repair', clip = 'fixing_a_ped' },
			usetime = 5500,
			export = 'renzu_tuners.useItem'
	
		}
	},
	
	['ultimate_fuelinjector'] = {
		label = 'Ultimate Fuel Injectors',
		weight = 150,
		stack = true,
		client = {
			
			anim = { dict = 'mini@repair', clip = 'fixing_a_ped' },
			usetime = 5500,
			export = 'renzu_tuners.useItem'
	
		}
	},
	['ultimate_pistons'] = {
		label = 'Ultimate Pistons Kit',
		weight = 350,
		stack = true,
		client = {
			
			anim = { dict = 'mini@repair', clip = 'fixing_a_ped' },
			usetime = 5500,
			export = 'renzu_tuners.useItem'
	
		}
	},
	
	['ultimate_connectingrods'] = {
		label = 'Ultimate Connecting Rods Kit',
		weight = 350,
		stack = true,
		client = {
			
			anim = { dict = 'mini@repair', clip = 'fixing_a_ped' },
			usetime = 5500,
			export = 'renzu_tuners.useItem'
	
		}
	},
	
	['ultimate_valves'] = {
		label = 'Ultimate Head Valves Kit',
		weight = 350,
		stack = true,
		client = {
			
			anim = { dict = 'mini@repair', clip = 'fixing_a_ped' },
			usetime = 5500,
			export = 'renzu_tuners.useItem'
	
		}
	},
	
	['ultimate_block'] = {
		label = 'Ultimate Block',
		weight = 350,
		stack = true,
		client = {
			
			anim = { dict = 'mini@repair', clip = 'fixing_a_ped' },
			usetime = 5500,
			export = 'renzu_tuners.useItem'
	
		}
	},
	
	['ultimate_crankshaft'] = {
		label = 'Ultimate CrankShaft',
		weight = 350,
		stack = true,
		client = {
			
			anim = { dict = 'mini@repair', clip = 'fixing_a_ped' },
			usetime = 5500,
			export = 'renzu_tuners.useItem'
		}
	},
	
	['ultimate_camshaft'] = {
		label = 'Ultimate Camshaft',
		weight = 350,
		stack = true,
		client = {
			
			anim = { dict = 'mini@repair', clip = 'fixing_a_ped' },
			usetime = 5500,
			export = 'renzu_tuners.useItem'
		}
	},
	
	['rubber'] = {
		label = 'Rubber',
		weight = 20,
		stack = true,
		close = true,
		description = nil,
	},
	['sulfur'] = {
		label = 'Sulfur',
		weight = 20,
		stack = true,
		close = true,
		description = nil,
	},
	['steel'] = {
		label = 'Steel',
		weight = 20,
		stack = true,
		close = true,
		description = nil,
	},
	['polyester'] = {
		label = 'Polyester',
		weight = 20,
		stack = true,
		close = true,
		description = nil,
	},
	['bottle'] = {
		label = 'Bottle',
		weight = 20,
		stack = true,
		close = true,
		description = nil,
	},
	['methane'] = {
		label = 'Methane',
		weight = 20,
		stack = true,
		close = true,
		description = nil,
	},
	['chip'] = {
		label = 'Chip',
		weight = 20,
		stack = true,
		close = true,
		description = nil,
	},
	['board'] = {
		label = 'Board',
		weight = 20,
		stack = true,
		close = true,
		description = nil,
	},
	
	['copper'] = {
		label = 'copper',
		weight = 20,
		stack = true,
	},
	
	['iron'] = {
		label = 'iron',
		weight = 20,
		stack = true,
	},
	
	['aluminum'] = {
		label = 'aluminum',
		weight = 20,
		stack = true,
	},
	['evidence'] = {
		label = 'evidence',
		weight = 20,
		stack = false,
		close = true,
		consume = 0,
		client = {
			export = 'renzu_evidence.useItem',
			disable = { move = true, car = true, combat = true },
			usetime = 1500,
		}
	},
	['fingerprintkit'] = {
		label = 'Latent Fingerprint Kit ',
		weight = 20,
		stack = true,
		close = true,
		consume = 0,
		client = {
			export = 'renzu_evidence.useItem',
			disable = { move = true, car = true, combat = true },
			usetime = 1500,
		}
	},
	['corn_seed'] = {
		label = 'Corn Seed',
		weight = 1,
		stack = true,
		close = true,
		description = "This is a seed that grows corn."
	},
	
	['corn_raw'] = {
		label = 'Raw Corn',
		weight = 1,
		stack = true,
		close = true,
		description = "You will need to process this."
	},
	
	['corn'] = {
		label = 'Corn',
		weight = 1,
		stack = true,
		close = true,
	},
	
	['tomato_seed'] = {
		label = 'Tomato Seed',
		weight = 1,
		stack = true,
		close = true,
		description = "This is a seed that grows a tomato."
	},
	
	['tomato_raw'] = {
		label = 'Raw Tomato',
		weight = 1,
		stack = true,
		close = true,
		description = "You will need to process this."
	},
	
	['tomato'] = {
		label = 'Tomato',
		weight = 1,
		stack = true,
		close = true,
	},
	
	['wheat_seed'] = {
		label = 'Wheat Seed',
		weight = 1,
		stack = true,
		close = true,
		description = "This is a seed that grows Wheat."
	},
	
	['wheat_raw'] = {
		label = 'Raw Wheat',
		weight = 1,
		stack = true,
		close = true,
		description = "You will need to process this."
	},
	
	['wheat'] = {
		label = 'Wheat',
		weight = 1,
		stack = true,
		close = true,
	},
	
	['broccoli_seed'] = {
		label = 'Broccoli Seed',
		weight = 1,
		stack = true,
		close = true,
		description = "This is a seed that grows broccoli."
	},
	
	['broccoli_raw'] = {
		label = 'Raw Broccoli',
		weight = 1,
		stack = true,
		close = true,
		description = "You will need to process this."
	},
	
	['broccoli'] = {
		label = 'Broccoli',
		weight = 1,
		stack = true,
		close = true,
	},
	
	['carrot_seed'] = {
		label = 'Carrot Seed',
		weight = 1,
		stack = true,
		close = true,
		description = "This is a seed that grows a carrot."
	},
	
	['carrot_raw'] = {
		label = 'Raw Carrot',
		weight = 1,
		stack = true,
		close = true,
		description = "You will need to process this."
	},
	
	['carrot'] = {
		label = 'Carrot',
		weight = 1,
		stack = true,
		close = true,
	},
	
	['potato_seed'] = {
		label = 'Potato Seed',
		weight = 1,
		stack = true,
		close = true,
		description = "This is a seed that grows a potato."
	},
	
	['potato_raw'] = {
		label = 'Raw Potato',
		weight = 1,
		stack = true,
		close = true,
		description = "You will need to process this."
	},
	
	['potato'] = {
		label = 'Potato',
		weight = 1,
		stack = true,
		close = true,
	},
	
	['pickle_seed'] = {
		label = 'Pickle Seed',
		weight = 1,
		stack = true,
		close = true,
		description = "This is a seed that grows a pickle."
	},
	
	['pickle_raw'] = {
		label = 'Raw Pickle',
		weight = 1,
		stack = true,
		close = true,
		description = "You will need to process this."
	},
	
	['pickle'] = {
		label = 'Pickle',
		weight = 1,
		stack = true,
		close = true,
	},
	
	['weed_seed'] = {
		label = 'Weed Seed',
		weight = 1,
		stack = true,
		close = true,
		description = "This is a seed that grows weed."
	},
	
	['weed_raw'] = {
		label = 'Raw Weed',
		weight = 1,
		stack = true,
		close = true,
		description = "You will need to process this."
	},
	
	['weed'] = {
		label = 'Weed',
		weight = 1,
		stack = true,
		close = true,
	},
	
	['cocaine_seed'] = {
		label = 'Cocaine Seed',
		weight = 1,
		stack = true,
		close = true,
		description = "This is a seed that grows cocaine."
	},
	
	['cocaine_raw'] = {
		label = 'Raw Cocaine',
		weight = 1,
		stack = true,
		close = true,
		description = "You will need to process this."
	},
	
	['cocaine'] = {
		label = 'Cocaine',
		weight = 1,
		stack = true,
		close = true,
	},
	
	['heroin_seed'] = {
		label = 'Heroin Seed',
		weight = 1,
		stack = true,
		close = true,
		description = "This is a seed that grows heroin."
	},
	
	['heroin_raw'] = {
		label = 'Raw Heroin',
		weight = 1,
		stack = true,
		close = true,
		description = "You will need to process this."
	},
	
	['heroin'] = {
		label = 'Heroin',
		weight = 1,
		stack = true,
		close = true,
	},
	
	['garden_pitcher'] = {
		label = 'Garden Pitcher',
		weight = 1,
		stack = true,
		close = true,
	},
	
	['garden_shovel'] = {
		label = 'Garden Shovel',
		weight = 1,
		stack = true,
		close = true,
	},
	['metal_wand'] = {
		label = 'Metal Wand',
		weight = 1,
		stack = true,
		description = ""
	},
    ['id_card'] = {
        label = 'ID Card',
        weight = 0,
        stack = false,
        close = true,
        description = "Your Description",
        client = {image = 'idcard.png'}
    },
    ['driver_license'] = {
        label = 'Drivers License',
        weight = 0,
        stack = false,
        close = true,
        description = "Your Description",
        client = {image = 'driverlicense.png'}
    },
    ['weaponlicense'] = {
        label = 'Weapon License',
        weight = 0,
        stack = false,
        close = true,
        description = "Your Description",
        client = {image = 'weaponlicense.png'}
    },
    ['lawyerpass'] = {
        label = 'Lawyer Pass',
        weight = 0,
        stack = false,
        close = true,
        description = "Your Description",
        client = {image = 'lawyerpass.png'}
    },
	-- RAIDJOB2
	['cw_raidjob_key'] = {
		label = 'Case key',
		weight = 0,
		stack = true,
		close = true,
		allowArmed = true,
		description = "Probably used for a case"
	},
	['cw_raidjob_case'] = {
		label = 'Case',
		weight = 0,
		stack = true,
		close = true,
		allowArmed = true,
		description = "Probably contains things"
	},
	['cw_raidjob_content'] = {
		label = 'Documents',
		weight = 0,
		stack = true,
		close = true,
		allowArmed = true,
		description = "Well above your paygrade"
	},
	['orange'] = {
		label = 'Fresh Orange',
		weight = 25,
		client = {
			status = { hunger = 500 },
			anim = 'eating',
			prop = { model = `ng_proc_food_ornge1a`, pos = vec3(0.02, 0.02, -0.04), rot = vec3(0.0, 0.0, 0.0) },
			usetime = 2500,
			notification = 'You ate a delicious orange'
		},
	},

	['orange_juice'] = {
		label = 'Orange Juice',
		weight = 100,
		client = {
			status = { thirst = 100000 },
			anim = { dict = 'mp_player_intdrink', clip = 'loop_bottle' },
			prop = { model = `prop_cs_script_bottle_01`, pos = vec3(0.01, 0.01, 0.06), rot = vec3(5.0, 5.0, -180.5) },
			usetime = 2500,
			notification = 'You have refreshed your self with a nice cold bottle of orange juice'
		}
	},
	['bag'] = {
		label = 'Bag',
		weight = 0,
		stack = false,
		close = true,
		description = '',
		client = {
			export = 'renzu_bag.useItem',
			disable = { move = true, car = true, combat = true },
			usetime = 1,
			remove = function(total)
				if _G.bagID then
					SetPedComponentVariation(cache.ped,5,_G.bagID,0,2)
					_G.bagID = nil
				end
			end
		},
		buttons = {
			{
				label = 'Wear / Unwear bag',
				action = function(slot)
					print(_G.bagID,'_G.bagID')
					if _G.bagID == nil then
						_G.bagID = GetPedDrawableVariation(cache.ped, 5)
						TriggerEvent('renzu_bag:Wearbag', slot)
					else
						SetPedComponentVariation(cache.ped,5,_G.bagID,0,2)
						_G.bagID = nil
					end
				end
			}
		}
	},
	['sim_card'] = {
		label = 'Sim Card',
		weight = 10,
		stack = false,
		close = true,
		description = nil,
		consume = 0,
		client = {
			remove = function()
				exports['r_simcards']:checkSim()
			end,
			add = function()
				exports['r_simcards']:checkSim()
			end,
		},
		server = {
			export = 'r_simcards.sim_card',
			metadata = {
				number = nil,
				ssn = nil
			}
		},
	},
}
