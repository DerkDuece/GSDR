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
    ['lawyerid'] = {
        label = 'Bar License ID Card.',
        weight = 1,
        consume = 0,
        stack = false,
        close = true,
        description = nil
    },

	["coca_leaf"] = {
		label = "Cocaine leaves",
		weight = 1500,
		stack = true,
		close = false,
		description = "Cocaine leaves that must be processed !",
		client = {
			image = "coca_leaf.png",
		}
	},

	["tq_cheese"] = {
		label = "Cheese",
		weight = 50,
		stack = true,
		close = false,
		description = "",
		client = {
			image = "tq_cheese.png",
		}
	},

	["weedkey"] = {
		label = "Key C",
		weight = 200,
		stack = true,
		close = false,
		description = "Random Key, with a \"Seed\" Engraved on the Back...",
		client = {
			image = "keyc.png",
		}
	},

	["burger-coupon10"] = {
		label = "Burgershot Coupon 10% Off",
		weight = 15,
		stack = true,
		close = false,
		description = "10% Off Coupon ",
		client = {
			image = "bs_coupon-ten.png",
		}
	},

	["halibut"] = {
		label = "Halibut",
		weight = 150,
		stack = false,
		close = true,
		description = "",
		client = {
			image = "halibut.png",
		}
	},

	["irishpub_kamikaze"] = {
		label = "Kamikaze",
		weight = 50,
		stack = true,
		close = false,
		description = "",
		client = {
			image = "irishpub_kamikaze.png",
		}
	},

	["pwineglass"] = {
		label = "Wine Glass",
		weight = 1000,
		stack = true,
		close = true,
		description = "Wine Glass",
		client = {
			image = "pwineglass.png",
		}
	},

	["milkdragon"] = {
		label = "Milk Dragon",
		weight = 250,
		stack = true,
		close = true,
		description = "Cyber Bar Is The Best.",
		client = {
			image = "milkdragon.png",
		}
	},

	["keepcompanionretriever"] = {
		label = "Retriever",
		weight = 500,
		stack = false,
		close = true,
		description = "Retriever is your royal companion!",
		client = {
			image = "A_C_Retriever.png",
		}
	},

	["rabbitfood"] = {
		label = "Veggie Salad",
		weight = 250,
		stack = true,
		close = true,
		description = "Hmmm nice.",
		client = {
			image = "rabbitfood.png",
		}
	},

	["emptydocuments"] = {
		label = "Blank Documents",
		weight = 10,
		stack = false,
		close = true,
		description = "These are blank documents which you can use to fill them out.",
		client = {
			image = "emptydocuments.png",
		}
	},

	["ppizzabase"] = {
		label = "Pizza Base",
		weight = 1000,
		stack = true,
		close = true,
		description = "Pizza Base",
		client = {
			image = "ppizzabase.png",
		}
	},

	["heartysandwich"] = {
		label = "Hearty Sandwich",
		weight = 250,
		stack = true,
		close = true,
		description = "Hmmm nice.",
		client = {
			image = "heartysandwich.png",
		}
	},

	["lsdlabkit"] = {
		label = "LSD Mixing Table",
		weight = 1000,
		stack = true,
		close = true,
		description = "",
		client = {
			image = "labkit.png",
		}
	},

	["plastic"] = {
		label = "Plastic",
		weight = 100,
		stack = true,
		close = false,
		description = "RECYCLE! - Greta Thunberg 2019",
		client = {
			image = "plastic.png",
		}
	},

	["fishbait"] = {
		label = "Fishing lure",
		weight = 45,
		stack = true,
		close = true,
		description = "Kind of stinks.. pew",
		client = {
			image = "fishingbait.png",
		}
	},

	["pbanana"] = {
		label = "Banana",
		weight = 1000,
		stack = true,
		close = true,
		description = "Banana",
		client = {
			image = "pbanana.png",
		}
	},

	["weed_white-widow"] = {
		label = "White Widow 2g",
		weight = 200,
		stack = true,
		close = false,
		description = "A weed bag with 2g White Widow",
		client = {
			image = "weed_baggy.png",
		}
	},

	["ppepper"] = {
		label = "DR.Pepper",
		weight = 1000,
		stack = true,
		close = true,
		description = "DR.Pepper",
		client = {
			image = "ppepper.png",
		}
	},

	["bean-mocha"] = {
		label = "Mocha",
		weight = 1000,
		stack = true,
		close = true,
		description = "",
		client = {
			image = "cafe.png",
		}
	},

	["emerald_necklace2"] = {
		label = "Old Wet Emerald Necklace",
		weight = 200,
		stack = true,
		close = false,
		description = "This was found fishing, fair and square!",
		client = {
			image = "emerald_necklace.png",
		}
	},

	["cakepop"] = {
		label = "Cat Cake-Pop",
		weight = 100,
		stack = true,
		close = true,
		description = "",
		client = {
			status = {
				hunger = 40,
			},
			image = "cakepop.png",
		}
	},

	["pcoffeeglass"] = {
		label = "Coffee Glass",
		weight = 1000,
		stack = true,
		close = true,
		description = "Empty Coffee Glass",
		client = {
			image = "pcoffeeglass.png",
		}
	},

	["ecocoffee"] = {
		label = "The Eco-ffee",
		weight = 100,
		stack = true,
		close = true,
		description = "",
		client = {
			status = {
				thirst = 28,
			},
			image = "ecoffee.png",
		}
	},

	["hb-french-toast-bacon"] = {
		label = "French Toast N Bacon",
		weight = 250,
		stack = true,
		close = true,
		description = "Yummy French Toast WITH BACON...",
		client = {
			image = "hb-french-toast-bacon.png",
		}
	},

	["ecola"] = {
		label = "eCola",
		weight = 100,
		stack = true,
		close = true,
		description = "",
		client = {
			status = {
				thirst = 24,
			},
			image = "ecola.png",
		}
	},

	["gearshift"] = {
		label = "Gearshift",
		weight = 450,
		stack = true,
		close = true,
		description = "A manual car stick shifter.",
		client = {
			image = "gearshift.png",
		}
	},

	["bean-cafe"] = {
		label = "Coffee",
		weight = 1000,
		stack = true,
		close = true,
		description = "",
		client = {
			image = "cafe.png",
		}
	},

	["diamond_necklace2"] = {
		label = "Old Wet Diamond Necklace",
		weight = 200,
		stack = true,
		close = false,
		description = "This was found fishing, fair and square!",
		client = {
			image = "diamond_necklace.png",
		}
	},

	["murderbag"] = {
		label = "Murder Bag",
		weight = 0,
		stack = false,
		close = true,
		description = "Grab a Murder Bag of Burgers",
		client = {
			image = "burgerbag.png",
		}
	},

	["tq_daquiri"] = {
		label = "Daquiri",
		weight = 50,
		stack = true,
		close = false,
		description = "",
		client = {
			image = "tq_daquiri.png",
		}
	},

	["strawberry"] = {
		label = "Strawberry",
		weight = 100,
		stack = true,
		close = true,
		description = "",
		client = {
			status = {
				hunger = 43,
			},
			image = "strawberry.png",
		}
	},

	["pistol4"] = {
		label = "Pistol Chassis",
		weight = 100,
		stack = true,
		close = false,
		description = "The chassis of a Walther P-99 Pistol.",
		client = {
			image = "pistol4.png",
		}
	},

	["carpart_door"] = {
		label = "Car Door",
		weight = 15000,
		stack = true,
		close = true,
		description = "A door from a vehicle",
		client = {
			image = "images/carpart_door.png",
		}
	},

	["pdough"] = {
		label = "Ready Pizza Dough",
		weight = 1000,
		stack = true,
		close = true,
		description = "Ready Pizza Dough",
		client = {
			image = "pdough.png",
		}
	},

	["irishpub_ban_straw_juice"] = {
		label = "Banana & Strawberry Juice",
		weight = 50,
		stack = true,
		close = false,
		description = "",
		client = {
			image = "irishpub_ban_straw_juice.png",
		}
	},

	["emerald_earring2"] = {
		label = "Old Wet Emerald Earrings",
		weight = 200,
		stack = true,
		close = false,
		description = "This was found fishing, fair and square!",
		client = {
			image = "emerald_earring.png",
		}
	},

	["orange_pl4"] = {
		label = "Quad Stack orange pl",
		weight = 100,
		stack = true,
		close = true,
		description = "",
		client = {
			image = "PL_orange.png",
		}
	},

	["brokenknife"] = {
		label = "Broken Knife",
		weight = 200,
		stack = true,
		close = false,
		description = "Rusted Knife",
		client = {
			image = "brokenknife.png",
		}
	},

	["jerry_can"] = {
		label = "Jerrycan 20L",
		weight = 20000,
		stack = true,
		close = true,
		description = "A can full of Fuel",
		client = {
			image = "jerry_can.png",
		}
	},

	["burger-murdermeal"] = {
		label = "Murder Meal",
		weight = 125,
		stack = true,
		close = true,
		description = "An Amazing Murder Meal with a chance of a toy.",
		client = {
			image = "burger-box.png",
		}
	},

	["burger-meatfree"] = {
		label = "MeatFree",
		weight = 125,
		stack = true,
		close = true,
		description = "Sates Hunger.",
		client = {
			image = "bs_meat-free.png",
		}
	},

	["white_aliens"] = {
		label = "Single Stack White aliens",
		weight = 100,
		stack = true,
		close = true,
		description = "",
		client = {
			image = "alien_white.png",
		}
	},

	["pstrawberryvanillaoatlatte"] = {
		label = "Strawberry Vanilla Oat Latte",
		weight = 1000,
		stack = true,
		close = true,
		description = "Strawberry Vanilla Oat Latte",
		client = {
			image = "pstrawberryvanillaoatlatte.png",
		}
	},

	["red_aliens2"] = {
		label = "Dual Stack red aliens",
		weight = 100,
		stack = true,
		close = true,
		description = "",
		client = {
			image = "alien_red.png",
		}
	},

	["funkopop_dumbledore"] = {
		label = "Dumbledore Funkopop",
		weight = 0,
		stack = true,
		close = false,
		description = "Dumbledore Funkopop Toy",
		client = {
			image = "funkopop_dumbledore.png",
		}
	},

	["yoshishooter"] = {
		label = "Yoshi Shooter",
		weight = 250,
		stack = true,
		close = true,
		description = "Cyber Bar Is The Best.",
		client = {
			image = "yoshishooter.png",
		}
	},

	["irishpub_milk"] = {
		label = "Milk",
		weight = 50,
		stack = true,
		close = false,
		description = "",
		client = {
			image = "irishpub_milk.png",
		}
	},

	["burriedtreasure"] = {
		label = "Sunken Treasure",
		weight = 200,
		stack = true,
		close = false,
		description = "Burried Treasure, woah",
		client = {
			image = "burriedtreasure.png",
		}
	},

	["irishpub_chocolate_cake"] = {
		label = "Chocolate Cake",
		weight = 50,
		stack = true,
		close = false,
		description = "",
		client = {
			image = "irishpub_chocolate_cake.png",
		}
	},

	["blueberry"] = {
		label = "Blueberry",
		weight = 100,
		stack = true,
		close = true,
		description = "",
		client = {
			status = {
				hunger = 46,
			},
			image = "blueberry.png",
		}
	},

	["rolling_paper"] = {
		label = "Rolling Paper",
		weight = 0,
		stack = true,
		close = true,
		description = "Paper made specifically for encasing and smoking tobacco or cannabis.",
		client = {
			image = "rolling_paper.png",
		}
	},

	["cokebaggy"] = {
		label = "Bag of Coke",
		weight = 0,
		stack = true,
		close = true,
		description = "To get happy real quick",
		client = {
			image = "cocaine_baggy.png",
		}
	},

	["duffbeer"] = {
		label = "Duff Beer",
		weight = 250,
		stack = true,
		close = true,
		description = "Cyber Bar Is The Best.",
		client = {
			image = "duffbeer.png",
		}
	},

	["weed_purple-haze_seed"] = {
		label = "Purple Haze Seed",
		weight = 0,
		stack = true,
		close = true,
		description = "A weed seed of Purple Haze",
		client = {
			image = "weed_seed.png",
		}
	},

	["tq_banana_juice"] = {
		label = "Banana Juice",
		weight = 50,
		stack = true,
		close = false,
		description = "",
		client = {
			image = "tq_banana_juice.png",
		}
	},

	["pnapollitano"] = {
		label = "Napollitano Pizza",
		weight = 1000,
		stack = true,
		close = true,
		description = "Napollitano Pizza",
		client = {
			image = "pnapollitano.png",
		}
	},

	["raw_xtc"] = {
		label = "Raw XTC",
		weight = 100,
		stack = true,
		close = true,
		description = "",
		client = {
			image = "raw_xtc.png",
		}
	},

	["empty_evidence_bag"] = {
		label = "Empty Evidence Bag",
		weight = 0,
		stack = true,
		close = false,
		description = "Used a lot to keep DNA from blood, bullet shells and more",
		client = {
			image = "evidence.png",
		}
	},

	["ice-tea-pessego"] = {
		label = "Peach Ice Tea",
		weight = 1000,
		stack = true,
		close = true,
		description = "",
		client = {
			image = "icetea.png",
		}
	},

	["mining_storage"] = {
		label = "Mining Storage",
		weight = 500,
		stack = false,
		close = true,
		description = "Classic's washing pan",
		client = {
			image = "mining_storage.png",
		}
	},

	["tissuebox"] = {
		label = "Tissue Box",
		weight = 100,
		stack = true,
		close = true,
		description = "An old box of tissues... Wonderful...",
		client = {
			image = "tissuebox.png",
		}
	},

	["oxy"] = {
		label = "Prescription Oxy",
		weight = 0,
		stack = true,
		close = true,
		description = "The Label Has Been Ripped Off",
		client = {
			image = "oxy.png",
		}
	},

	["tq_island_fantasy"] = {
		label = "Island Fantasy",
		weight = 50,
		stack = true,
		close = false,
		description = "",
		client = {
			image = "tq_island_fantasy.png",
		}
	},

	["riceball"] = {
		label = "Neko Onigiri",
		weight = 100,
		stack = true,
		close = true,
		description = "",
		client = {
			status = {
				hunger = 46,
			},
			image = "catrice.png",
		}
	},

	["fishicebox"] = {
		label = "Fishing Ice Chest",
		weight = 2500,
		stack = false,
		close = true,
		description = "Ice Box to store all of your fish",
		client = {
			image = "fishicebox.png",
		}
	},

	["lysergic_acid"] = {
		label = "Lysergic Acid",
		weight = 100,
		stack = true,
		close = true,
		description = "",
		client = {
			image = "lysergic_acid.png",
		}
	},

	["meatpig"] = {
		label = "Pig Meat",
		weight = 100,
		stack = true,
		close = false,
		description = "Pig Meat",
		client = {
			image = "pigpelt.png",
		}
	},

	["gt-beef_combo_meal"] = {
		label = "Beef Combo Meal",
		weight = 100,
		stack = true,
		close = true,
		description = "Gunnar made a whole combo meal, better hope you get something special...",
		client = {
			image = "gt-combomeal.png",
		}
	},

	["metalscrap"] = {
		label = "Metal Scrap",
		weight = 100,
		stack = true,
		close = false,
		description = "You can probably make something nice out of this",
		client = {
			image = "metalscrap.png",
		}
	},

	["hb-water-bottle"] = {
		label = "Water Bottle",
		weight = 180,
		stack = true,
		close = true,
		description = "Good ol water",
		client = {
			image = "hb-water-bottle.png",
		}
	},

	["orange_playboys"] = {
		label = "Single Stack orange Playboys",
		weight = 100,
		stack = true,
		close = true,
		description = "",
		client = {
			image = "playboy_orange.png",
		}
	},

	["meatrabbit"] = {
		label = "Rabbit Fur",
		weight = 100,
		stack = true,
		close = false,
		description = "Rabbit Fur",
		client = {
			image = "rabbitfur.png",
		}
	},

	["carpart_trunk"] = {
		label = "Car Trunk",
		weight = 15000,
		stack = true,
		close = true,
		description = "A trunk from a vehicle",
		client = {
			image = "images/carpart_trunk.png",
		}
	},

	["nitrous"] = {
		label = "Nitrous",
		weight = 1000,
		stack = true,
		close = true,
		description = "Speed up, gas pedal! :D",
		client = {
			image = "nitrous.png",
		}
	},

	["fabric"] = {
		label = "Fabric scrap",
		weight = 150,
		stack = true,
		close = true,
		description = "Looks like someone has thrown an old strip of fabric, must have bought too much?",
		client = {
			image = "fabric.png",
		}
	},

	["hb-bun"] = {
		label = "Buns",
		weight = 150,
		stack = true,
		close = true,
		description = "Ingredient",
		client = {
			image = "hb-bun.png",
		}
	},

	["burger-torpedo"] = {
		label = "Torpedo",
		weight = 310,
		stack = true,
		close = true,
		description = "Sates Hunger.",
		client = {
			image = "bs_torpedo.png",
		}
	},

	["tq_cake"] = {
		label = "Cake",
		weight = 50,
		stack = true,
		close = false,
		description = "",
		client = {
			image = "tq_cake.png",
		}
	},

	["heavyarmor"] = {
		label = "Heavy Armor",
		weight = 5000,
		stack = true,
		close = true,
		description = "Some protection won't hurt... right?",
		client = {
			image = "armor.png",
		}
	},

	["twerks_candy"] = {
		label = "Twerks",
		weight = 100,
		stack = true,
		close = true,
		description = "Some delicious candy :O",
		client = {
			image = "twerks_candy.png",
		}
	},

	["pwhiskyglass"] = {
		label = "Whiskey Glass",
		weight = 1000,
		stack = true,
		close = true,
		description = "Whiskey Glass",
		client = {
			image = "pwhiskyglass.png",
		}
	},

	["coke"] = {
		label = "Raw Cocaine",
		weight = 1000,
		stack = true,
		close = false,
		description = "Processed cocaine",
		client = {
			image = "coke.png",
		}
	},

	["tq_chocolate"] = {
		label = "Chocolate",
		weight = 50,
		stack = true,
		close = false,
		description = "",
		client = {
			image = "tq_chocolate.png",
		}
	},

	["heroinburner"] = {
		label = "Razr Burner",
		weight = 100,
		stack = true,
		close = true,
		description = "",
		client = {
			image = "heroinburner.png",
		}
	},

	["thermite"] = {
		label = "Thermite",
		weight = 1000,
		stack = true,
		close = true,
		description = "Sometimes you'd wish for everything to burn",
		client = {
			image = "thermite.png",
		}
	},

	["tq_caramel"] = {
		label = "Caramel",
		weight = 50,
		stack = true,
		close = false,
		description = "",
		client = {
			image = "tq_caramel.png",
		}
	},

	["orange_playboys2"] = {
		label = "Dual Stack orange Playboys",
		weight = 100,
		stack = true,
		close = true,
		description = "",
		client = {
			image = "playboy_orange.png",
		}
	},

	["orange_playboys4"] = {
		label = "Quad Stack orange Playboys",
		weight = 100,
		stack = true,
		close = true,
		description = "",
		client = {
			image = "playboy_orange.png",
		}
	},

	["trimming_scissors"] = {
		label = "Trimming Scissors",
		weight = 1500,
		stack = true,
		close = false,
		description = "Very Sharp Trimming Scissors",
		client = {
			image = "trimming_scissors.png",
		}
	},

	["bratte"] = {
		label = "The Bratte",
		weight = 100,
		stack = true,
		close = true,
		description = "",
		client = {
			status = {
				thirst = 29,
			},
			image = "bratte.png",
		}
	},

	["adderal"] = {
		label = "Adderal",
		weight = 100,
		stack = true,
		close = true,
		description = "",
		client = {
			image = "adderal.png",
		}
	},

	["sturgeon"] = {
		label = "Sturgeon",
		weight = 150,
		stack = false,
		close = true,
		description = "",
		client = {
			image = "sturgeon.png",
		}
	},

	["hb-dblchicken-burger"] = {
		label = "DBL Chicken Burger",
		weight = 250,
		stack = true,
		close = true,
		description = "Big Chicken Burger",
		client = {
			image = "hb-dblchicken-burger.png",
		}
	},

	["panqueca-nutela"] = {
		label = "Nutela Pancake",
		weight = 1000,
		stack = true,
		close = true,
		description = "",
		client = {
			image = "panutela.png",
		}
	},

	["lsd_vial_five"] = {
		label = "Amazing LSD",
		weight = 100,
		stack = true,
		close = true,
		description = "",
		client = {
			image = "lsd_vial_five.png",
		}
	},

	["shroom"] = {
		label = "Mushroom",
		weight = 40,
		stack = true,
		close = false,
		description = "A strange looking mushroom, smells kind of funky?",
		client = {
			image = "mushroom.png",
		}
	},

	["cokestagetwo"] = {
		label = "Better Raw Cocaine",
		weight = 100,
		stack = true,
		close = false,
		description = "Processed cocaine",
		client = {
			image = "cokestagetwo.png",
		}
	},

	["casino_burger"] = {
		label = "Casino Burger",
		weight = 0,
		stack = false,
		close = false,
		description = "Casino Burger",
		client = {
			image = "casino_burger.png",
		}
	},

	["irishpub_caramel"] = {
		label = "Caramel",
		weight = 50,
		stack = true,
		close = false,
		description = "",
		client = {
			image = "irishpub_caramel.png",
		}
	},

	["needle"] = {
		label = "Syringe",
		weight = 250,
		stack = true,
		close = false,
		description = "",
		client = {
			image = "syringe.png",
		}
	},

	["pvegpizzaslice"] = {
		label = "Vegi Slice",
		weight = 1000,
		stack = true,
		close = true,
		description = "Vegi Slice",
		client = {
			image = "ppizzaslice.png",
		}
	},

	["white_trolls4"] = {
		label = "Quad Stack White trolls",
		weight = 100,
		stack = true,
		close = true,
		description = "",
		client = {
			image = "troll_white.png",
		}
	},

	["sodacan"] = {
		label = "Soda Can",
		weight = 500,
		stack = true,
		close = true,
		description = "What was once a refreshing beverage is now just a tin can...",
		client = {
			image = "crushedcan.png",
		}
	},

	["red_trolls"] = {
		label = "Single Stack red trolls",
		weight = 100,
		stack = true,
		close = true,
		description = "",
		client = {
			image = "troll_red.png",
		}
	},

	["fruit_basket"] = {
		label = "Fruit Basket",
		weight = 1000,
		stack = false,
		close = true,
		description = "Fruit Basket",
		client = {
			image = "fruit_basket.png",
		}
	},

	["tq_berry_hydrating"] = {
		label = "Berry Hydrating",
		weight = 50,
		stack = true,
		close = false,
		description = "",
		client = {
			image = "tq_berry_hydrating.png",
		}
	},

	["burger-toy1"] = {
		label = "Action Figure",
		weight = 50,
		stack = false,
		close = false,
		description = "An Action Figure From the late 90's",
		client = {
			image = "burger-toy1.png",
		}
	},

	["vodka"] = {
		label = "Vodka",
		weight = 500,
		stack = true,
		close = true,
		description = "For all the thirsty out there",
		client = {
			image = "vodka.png",
		}
	},

	["caffeagra"] = {
		label = "Caffeagra",
		weight = 100,
		stack = true,
		close = true,
		description = "",
		client = {
			status = {
				thirst = 29,
			},
			image = "caffeagra.png",
		}
	},

	["aluminumoxide"] = {
		label = "Aluminium Powder",
		weight = 100,
		stack = true,
		close = false,
		description = "Some powder to mix with",
		client = {
			image = "aluminumoxide.png",
		}
	},

	["whiskey"] = {
		label = "Whiskey",
		weight = 500,
		stack = true,
		close = true,
		description = "For all the thirsty out there",
		client = {
			image = "whiskey.png",
		}
	},

	["burger-raw"] = {
		label = "Raw Patty",
		weight = 125,
		stack = true,
		close = true,
		description = "An Ingredient",
		client = {
			image = "bs_patty_raw.png",
		}
	},

	["bluegill"] = {
		label = "Blue Gill",
		weight = 150,
		stack = false,
		close = true,
		description = "",
		client = {
			image = "bluegill.png",
		}
	},

	["greenslushy"] = {
		label = "Green Slushy",
		weight = 750,
		stack = false,
		close = true,
		description = "Damn a Slushy...",
		client = {
			image = "greenslushy.png",
		}
	},

	["cardoor"] = {
		label = "Car Door",
		weight = 1650,
		stack = true,
		close = true,
		description = "A door which has been stripped off a motor vehicle.",
		client = {
			image = "cardoor.png",
		}
	},

	["water_bottle"] = {
		label = "Bottle of Water",
		weight = 500,
		stack = true,
		close = true,
		description = "For all the thirsty out there",
		client = {
			image = "water_bottle.png",
		}
	},

	["tq_strawberrycup"] = {
		label = "Cocotq strawberrycupnut",
		weight = 50,
		stack = true,
		close = false,
		description = "",
		client = {
			image = "tq_strawberrycup.png",
		}
	},

	["rawbacon"] = {
		label = "Raw Bacon",
		weight = 100,
		stack = true,
		close = true,
		description = "",
		client = {
			image = "rawbacon.png",
		}
	},

	["noodlebowl"] = {
		label = "Bowl of Noodles",
		weight = 100,
		stack = true,
		close = true,
		description = "",
		client = {
			status = {
				hunger = 42,
			},
			image = "noodlebowl.png",
		}
	},

	["document"] = {
		label = "Document",
		weight = 10,
		stack = false,
		close = true,
		description = "This is a custom document which has been made.",
		client = {
			image = "printerdocument.png",
		}
	},

	["casino_chips"] = {
		label = "Casino Chips",
		weight = 0,
		stack = false,
		close = false,
		description = "Casino Chips",
		client = {
			image = "casino_chips.png",
		}
	},

	["orange_xtc"] = {
		label = "Single Stack Orange XTC",
		weight = 100,
		stack = true,
		close = true,
		description = "",
		client = {
			image = "unstampedorange.png",
		}
	},

	["red_playboys2"] = {
		label = "Dual Stack red Playboys",
		weight = 100,
		stack = true,
		close = true,
		description = "",
		client = {
			image = "playboy_red.png",
		}
	},

	["firework2"] = {
		label = "Poppelers",
		weight = 1000,
		stack = true,
		close = true,
		description = "Fireworks",
		client = {
			image = "firework2.png",
		}
	},

	["mocha"] = {
		label = "Mocha Meow",
		weight = 100,
		stack = true,
		close = true,
		description = "",
		client = {
			status = {
				thirst = 40,
			},
			image = "mochameow.png",
		}
	},

	["fishinglootbig"] = {
		label = "Treasure Chest",
		weight = 2500,
		stack = true,
		close = true,
		description = "The lock seems to be intact, Might need a key",
		client = {
			image = "fishinglootbig.png",
		}
	},

	["white_xtc"] = {
		label = "Single Stack White XTC",
		weight = 100,
		stack = true,
		close = true,
		description = "",
		client = {
			image = "unstampedwhite.png",
		}
	},

	["fly_permit"] = {
		label = "Pilots Permit",
		weight = 0,
		stack = false,
		close = false,
		description = "A Pilots permit to show you can fly a plane as long as you have a passenger with a valid Pilots License",
		client = {
			image = "id_card.png",
		}
	},

	["irishpub_island_breeze"] = {
		label = "Island Breeze",
		weight = 50,
		stack = true,
		close = false,
		description = "",
		client = {
			image = "irishpub_island_breeze.png",
		}
	},

	["orange_cats4"] = {
		label = "Quad Stack orange cats",
		weight = 100,
		stack = true,
		close = true,
		description = "",
		client = {
			image = "kitty_orange.png",
		}
	},

	["markedbills"] = {
		label = "Marked Money",
		weight = 1000,
		stack = false,
		close = true,
		description = "Money?",
		client = {
			image = "markedbills.png",
		}
	},

	["tq_island_breeze"] = {
		label = "Island Breeze",
		weight = 50,
		stack = true,
		close = false,
		description = "",
		client = {
			image = "tq_island_breeze.png",
		}
	},

	["irishpub_just_peachy"] = {
		label = "Just Peachy",
		weight = 50,
		stack = true,
		close = false,
		description = "",
		client = {
			image = "irishpub_just_peachy.png",
		}
	},

	["casino_luckypotion"] = {
		label = "Casino Lucky Potion",
		weight = 0,
		stack = false,
		close = false,
		description = "Casino Lucky Potion",
		client = {
			image = "casino_luckypotion.png",
		}
	},

	["banana_gumball"] = {
		label = "Banana GumBall",
		weight = 50,
		stack = true,
		close = true,
		description = "A Banana GumBall from the local Store!",
		client = {
			image = "banana_gumball.png",
		}
	},

	["white_playboys3"] = {
		label = "Triple Stack White Playboys",
		weight = 100,
		stack = true,
		close = true,
		description = "",
		client = {
			image = "playboy_white.png",
		}
	},

	["oldtire"] = {
		label = "Old worn tire",
		weight = 320,
		stack = true,
		close = true,
		description = "This tire looks like it has seen better days, might be able to salvage some of it...",
		client = {
			image = "oldtire.png",
		}
	},

	["burger-moneyshot"] = {
		label = "Moneyshot",
		weight = 300,
		stack = true,
		close = true,
		description = "Sates Hunger.",
		client = {
			image = "bs_money-shot.png",
		}
	},

	["harness"] = {
		label = "Race Harness",
		weight = 1000,
		stack = false,
		close = true,
		description = "Racing Harness so no matter what you stay in the car",
		client = {
			image = "harness.png",
		}
	},

	["cokebaggystagethree"] = {
		label = "Bag of Great Coke",
		weight = 100,
		stack = true,
		close = true,
		description = "To get happy real quick",
		client = {
			image = "cocaine_baggystagethree.png",
		}
	},

	["hb-gratedcheese"] = {
		label = "Grated Cheese",
		weight = 150,
		stack = true,
		close = true,
		description = "Ingredient",
		client = {
			image = "hb-gratedcheese.png",
		}
	},

	["patochebeer"] = {
		label = "Patoche Beer",
		weight = 250,
		stack = true,
		close = true,
		description = "Cyber Bar Is The Best.",
		client = {
			image = "patochebeer.png",
		}
	},

	["casinochips"] = {
		label = "Casino Chips",
		weight = 0,
		stack = true,
		close = false,
		description = "Chips For Casino Gambling",
		client = {
			image = "casinochips.png",
		}
	},

	["screwdriverset"] = {
		label = "Toolkit",
		weight = 1000,
		stack = true,
		close = false,
		description = "Very useful to screw... screws...",
		client = {
			image = "screwdriverset.png",
		}
	},

	["gardengloves"] = {
		label = "Gardening Gloves",
		weight = 500,
		stack = true,
		close = false,
		description = "A sturdy set of gardening gloves, used to avoid harm when gardening.",
		client = {
			image = "gardengloves.png",
		}
	},

	["keepcompanionhusky"] = {
		label = "Husky",
		weight = 500,
		stack = false,
		close = true,
		description = "Husky is your royal companion!",
		client = {
			image = "A_C_Husky.png",
		}
	},

	["white_cats4"] = {
		label = "Quad Stack White cats",
		weight = 100,
		stack = true,
		close = true,
		description = "",
		client = {
			image = "kitty_white.png",
		}
	},

	["irishpub_kiwi"] = {
		label = "Kiwi",
		weight = 50,
		stack = true,
		close = false,
		description = "",
		client = {
			image = "irishpub_kiwi.png",
		}
	},

	["hb-chicken"] = {
		label = "Chicken",
		weight = 150,
		stack = true,
		close = true,
		description = "Ingredient",
		client = {
			image = "hb-chicken.png",
		}
	},

	["rawsausage"] = {
		label = "Raw Sausage",
		weight = 100,
		stack = true,
		close = true,
		description = "",
		client = {
			image = "rawsausage.png",
		}
	},

	["screwdriver"] = {
		label = "Screwdriver",
		weight = 100,
		stack = true,
		close = false,
		description = "A flathead screwdriver. I mean sure the handle is a bit worn but this thing probably works.",
		client = {
			image = "screwdriver.png",
		}
	},

	["pinger"] = {
		label = "Pinger",
		weight = 1000,
		stack = true,
		close = true,
		description = "With a pinger and your phone you can send out your location",
		client = {
			image = "pinger.png",
		}
	},

	["lsdburner"] = {
		label = "SideKick Burner",
		weight = 100,
		stack = true,
		close = true,
		description = "",
		client = {
			image = "lsdburner.png",
		}
	},

	["watermelon"] = {
		label = "WaterMelon Slice",
		weight = 100,
		stack = true,
		close = true,
		description = "",
		client = {
			status = {
				hunger = 26,
				thirst = 24,
			},
			image = "watermelon.png",
		}
	},

	["weed_ak47_seed"] = {
		label = "AK47 Seed",
		weight = 0,
		stack = true,
		close = true,
		description = "A weed seed of AK47",
		client = {
			image = "weed_seed.png",
		}
	},

	["wet_weed"] = {
		label = "Moist Weed",
		weight = 3000,
		stack = true,
		close = false,
		description = "Wet weed that needs to be treated!",
		client = {
			image = "wet_weed.png",
		}
	},

	["hb-hornburger-pickle"] = {
		label = "Pickle Horn Burger",
		weight = 175,
		stack = true,
		close = true,
		description = "Idk what Managment was thinking...",
		client = {
			image = "hb-hornyburger-pickle.png",
		}
	},

	["liquorkey"] = {
		label = "Liquor Storeroom",
		weight = 200,
		stack = true,
		close = false,
		description = "A curious key with the label 'Liquor Storeroom'.",
		client = {
			image = "liquorkey.png",
		}
	},

	["burger-heartstopper"] = {
		label = "Heartstopper",
		weight = 2500,
		stack = true,
		close = true,
		description = "Sates Hunger.",
		client = {
			image = "bs_the-heart-stopper.png",
		}
	},

	["mining_drill"] = {
		label = "Mining Drill",
		weight = 500,
		stack = false,
		close = true,
		description = "Classic's pickaxe for mining",
		client = {
			image = "mining_drill.png",
		}
	},

	["yinyang_tabs"] = {
		label = "Yin and Yang Tabs",
		weight = 100,
		stack = true,
		close = true,
		description = "",
		client = {
			image = "yinyang_tabs.png",
		}
	},

	["blue_cats2"] = {
		label = "Dual Stack blue cats",
		weight = 100,
		stack = true,
		close = true,
		description = "",
		client = {
			image = "kitty_blue.png",
		}
	},

	["tab_paper"] = {
		label = "Tab Paper",
		weight = 100,
		stack = true,
		close = true,
		description = "",
		client = {
			image = "tab_paper.png",
		}
	},

	["burger-toy2"] = {
		label = "Pink Teddy",
		weight = 50,
		stack = false,
		close = false,
		description = "A Fluffy Pink Teddy from the Atic",
		client = {
			image = "burger-toy2.png",
		}
	},

	["white_xtc4"] = {
		label = "Quad Stack White XTC",
		weight = 100,
		stack = true,
		close = true,
		description = "",
		client = {
			image = "unstampedwhite.png",
		}
	},

	["hb-sprunk"] = {
		label = "Sprunk",
		weight = 180,
		stack = true,
		close = true,
		description = "Nothing like an ice cold Sprunk",
		client = {
			image = "hb-sprunk.png",
		}
	},

	["hb-sugar-cubes"] = {
		label = "Sguar Cubes",
		weight = 100,
		stack = true,
		close = true,
		description = "Ingredient",
		client = {
			image = "hb-sugar-cubes.png",
		}
	},

	["samsungphone"] = {
		label = "Samsung S10",
		weight = 1000,
		stack = true,
		close = true,
		description = "Very expensive phone",
		client = {
			image = "samsungphone.png",
		}
	},

	["red_cats4"] = {
		label = "Quad Stack red cats",
		weight = 100,
		stack = true,
		close = true,
		description = "",
		client = {
			image = "kitty_red.png",
		}
	},

	["hb-chicken-salad"] = {
		label = "Chicken Salad",
		weight = 100,
		stack = true,
		close = true,
		description = "Fresh Chicken Salad",
		client = {
			image = "hb-chicken-salad.png",
		}
	},

	["heroincutstagetwo"] = {
		label = "Better Cut Heroin",
		weight = 250,
		stack = true,
		close = false,
		description = "",
		client = {
			image = "heroinpowderstagethree.png",
		}
	},

	["tuna"] = {
		label = "Tuna",
		weight = 150,
		stack = false,
		close = true,
		description = "",
		client = {
			image = "tuna.png",
		}
	},

	["red_aliens"] = {
		label = "Single Stack red aliens",
		weight = 100,
		stack = true,
		close = true,
		description = "",
		client = {
			image = "alien_red.png",
		}
	},

	["blueslushy"] = {
		label = "Blue Slushy",
		weight = 750,
		stack = false,
		close = true,
		description = "Damn a Slushy...",
		client = {
			image = "blueslushy.png",
		}
	},

	["gratefuldead_tabs"] = {
		label = "Grateful Dead Tabs",
		weight = 100,
		stack = true,
		close = true,
		description = "DONT USE IF YOU GET SEIZURES",
		client = {
			image = "gratefuldead_tabs.png",
		}
	},

	["pbbqporkmac"] = {
		label = "BBQ Pork Mac",
		weight = 1000,
		stack = true,
		close = true,
		description = "BBQ Pork Mac N Cheese",
		client = {
			image = "pbbqporkmac.png",
		}
	},

	["fishingboot"] = {
		label = "Fishing Boot",
		weight = 2500,
		stack = true,
		close = false,
		description = "Fishing Boot",
		client = {
			image = "fishingboot.png",
		}
	},

	["purrito"] = {
		label = "Purrito",
		weight = 100,
		stack = true,
		close = true,
		description = "",
		client = {
			status = {
				hunger = 44,
			},
			image = "purrito.png",
		}
	},

	["red_xtc3"] = {
		label = "Triple Stack Red XTC",
		weight = 100,
		stack = true,
		close = true,
		description = "",
		client = {
			image = "unstampedred.png",
		}
	},

	["pmushrooms"] = {
		label = "Mushrooms",
		weight = 1000,
		stack = true,
		close = true,
		description = "Mushrooms",
		client = {
			image = "pmushrooms.png",
		}
	},

	["carjack"] = {
		label = "Car Jack",
		weight = 1000,
		stack = true,
		close = true,
		description = "A battery used to power motor vehicles. Not sure if this has any charge left.",
		client = {
			image = "carjack.png",
		}
	},

	["gt-seasoning"] = {
		label = "Seasoning",
		weight = 100,
		stack = true,
		close = true,
		description = "Might be used to make something",
		client = {
			image = "gt-seasoning.png",
		}
	},

	["croasant-ovo"] = {
		label = "Egg Croisant",
		weight = 1000,
		stack = true,
		close = true,
		description = "",
		client = {
			image = "croasant.png",
		}
	},

	["advancedlockpick"] = {
		label = "Advanced Lockpick",
		weight = 500,
		stack = true,
		close = true,
		description = "If you lose your keys a lot this is very useful... Also useful to open your beers",
		client = {
			image = "advancedlockpick.png",
		}
	},

	["fishtacklebox"] = {
		label = "Tackle Box",
		weight = 1000,
		stack = true,
		close = true,
		description = "Seems to be left over tackle box from another fisherman",
		client = {
			image = "fishtacklebox.png",
		}
	},

	["hb-pepsi"] = {
		label = "Pepsi",
		weight = 180,
		stack = true,
		close = true,
		description = "Pepsi!",
		client = {
			image = "hb-pepsi.png",
		}
	},

	["bbq2"] = {
		label = "BBQ Pit",
		weight = 200,
		stack = true,
		close = true,
		description = "A Sturdy BBQ Pit.",
		client = {
			image = "bbq2.png",
		}
	},

	["silverchain2"] = {
		label = "Old Wet Silver Chain",
		weight = 200,
		stack = true,
		close = false,
		description = "This was found fishing, fair and square!",
		client = {
			image = "silverchain.png",
		}
	},

	["hb-baconrolls"] = {
		label = "Bacon Rolls",
		weight = 250,
		stack = true,
		close = true,
		description = "Bacon wrapped around cheese!",
		client = {
			image = "hb-baconroll.png",
		}
	},

	["pcocacola"] = {
		label = "Coca Cola",
		weight = 1000,
		stack = true,
		close = true,
		description = "Coca Cola",
		client = {
			image = "pcocacola.png",
		}
	},

	["bbq3"] = {
		label = "BBQ Pit",
		weight = 200,
		stack = true,
		close = true,
		description = "A Sturdy BBQ Pit.",
		client = {
			image = "bbq3.png",
		}
	},

	["rustynails"] = {
		label = "Rusted Nails",
		weight = 150,
		stack = true,
		close = true,
		description = "A collection of nails that have seen better days... Perhaps they can be cleaned?",
		client = {
			image = "rustynails.png",
		}
	},

	["pcastellobrolio"] = {
		label = "Castello Brolio Red Wine",
		weight = 1000,
		stack = true,
		close = true,
		description = "Castello Brolio Red Wine",
		client = {
			image = "pcastellobrolio.png",
		}
	},

	["opmcocktail"] = {
		label = "One Punch Man Cocktail",
		weight = 250,
		stack = true,
		close = true,
		description = "Cyber Bar Is The Best.",
		client = {
			image = "opmcocktail.png",
		}
	},

	["bbq1"] = {
		label = "BBQ Pit",
		weight = 200,
		stack = true,
		close = true,
		description = "A Sturdy BBQ Pit.",
		client = {
			image = "bbq1.png",
		}
	},

	["stingray"] = {
		label = "Stingray",
		weight = 2500,
		stack = false,
		close = false,
		description = "Stingray",
		client = {
			image = "stingray.png",
		}
	},

	["predwinebottle"] = {
		label = " Regular Red Wine Bottle",
		weight = 1000,
		stack = true,
		close = true,
		description = "Regular Red Wine",
		client = {
			image = "predwinebottle.png",
		}
	},

	["keepcompanionpug"] = {
		label = "Pug",
		weight = 500,
		stack = false,
		close = true,
		description = "Pug is your royal companion!",
		client = {
			image = "A_C_Pug.png",
		}
	},

	["redslushy"] = {
		label = "Red Slushy",
		weight = 750,
		stack = false,
		close = true,
		description = "Damn a Slushy...",
		client = {
			image = "redslushy.png",
		}
	},

	["hb-hornburger-bacon"] = {
		label = "Bacon Horn Burger",
		weight = 250,
		stack = true,
		close = true,
		description = "Classic Burger with Bacon!",
		client = {
			image = "hb-hornburger-bacon.png",
		}
	},

	["hb-pickle"] = {
		label = "Pickles",
		weight = 150,
		stack = true,
		close = true,
		description = "Ingredient",
		client = {
			image = "hb-pickle.png",
		}
	},

	["oystershell"] = {
		label = "Oyster Shell",
		weight = 100,
		stack = true,
		close = true,
		description = "",
		client = {
			image = "oyster.png",
		}
	},

	["walleye"] = {
		label = "Walleye",
		weight = 150,
		stack = false,
		close = true,
		description = "",
		client = {
			image = "walleye.png",
		}
	},

	["ruby_necklace2"] = {
		label = "Old Wet Ruby Necklace",
		weight = 200,
		stack = true,
		close = false,
		description = "This was found fishing, fair and square!",
		client = {
			image = "ruby_necklace.png",
		}
	},

	["certificate"] = {
		label = "Certificate",
		weight = 0,
		stack = true,
		close = true,
		description = "Certificate that proves you own certain stuff",
		client = {
			image = "certificate.png",
		}
	},

	["pfresca"] = {
		label = "Pasta Fresca",
		weight = 1000,
		stack = true,
		close = true,
		description = "Pasta Fresca",
		client = {
			image = "pfresca.png",
		}
	},

	["gt-soda_syrup"] = {
		label = "Soda Syrup",
		weight = 100,
		stack = true,
		close = true,
		description = "Might be used to make something",
		client = {
			image = "gt-sodasyrup.png",
		}
	},

	["antiquecoin"] = {
		label = "Antique Coin",
		weight = 200,
		stack = true,
		close = false,
		description = "This seems old...",
		client = {
			image = "antiquecoin.png",
		}
	},

	["hb-cherrypopper"] = {
		label = "Cherry Popper",
		weight = 150,
		stack = true,
		close = true,
		description = "Wanna lick my Cherry Pop?",
		client = {
			image = "hb-cherrypopper.png",
		}
	},

	["porkchop"] = {
		label = "Pork Chop",
		weight = 100,
		stack = true,
		close = true,
		description = "",
		client = {
			image = "porkchop.png",
		}
	},

	["white_playboys"] = {
		label = "Single Stack White Playboys",
		weight = 100,
		stack = true,
		close = true,
		description = "",
		client = {
			image = "playboy_white.png",
		}
	},

	["irishpub_watermelon"] = {
		label = "Watermelon",
		weight = 50,
		stack = true,
		close = false,
		description = "",
		client = {
			image = "irishpub_watermelon.png",
		}
	},

	["burger-mshake"] = {
		label = "Milkshake",
		weight = 125,
		stack = true,
		close = true,
		description = "Hand-scooped for you!",
		client = {
			image = "bs_milkshake.png",
		}
	},

	["irishpub_berry_hydrating"] = {
		label = "Berry Hydrating",
		weight = 50,
		stack = true,
		close = false,
		description = "",
		client = {
			image = "irishpub_berry_hydrating.png",
		}
	},

	["gt-tortilla"] = {
		label = "Tortilla",
		weight = 100,
		stack = true,
		close = true,
		description = "Might be used to make something",
		client = {
			image = "gt-tortilla.png",
		}
	},

	["vitodaiquiri"] = {
		label = "Vito Daiquiri",
		weight = 250,
		stack = true,
		close = true,
		description = "Cyber Bar Is The Best.",
		client = {
			image = "vitodaiquiri.png",
		}
	},

	["baggedcracked"] = {
		label = "Bag Of Crack",
		weight = 250,
		stack = true,
		close = false,
		description = "",
		client = {
			image = "crackbag1.png",
		}
	},

	["pgoldsake"] = {
		label = "Gold Sake",
		weight = 1000,
		stack = true,
		close = true,
		description = "Gold Sake",
		client = {
			image = "pgoldsake.png",
		}
	},

	["crackrockstagetwo"] = {
		label = "Better Crack Rock",
		weight = 250,
		stack = true,
		close = false,
		description = "",
		client = {
			image = "crackrock2.png",
		}
	},

	["pbutter"] = {
		label = "Butter",
		weight = 1000,
		stack = true,
		close = true,
		description = "Butter",
		client = {
			image = "pbutter.png",
		}
	},

	["irishpub_cocktail"] = {
		label = "Cocktail",
		weight = 50,
		stack = true,
		close = false,
		description = "",
		client = {
			image = "irishpub_cocktail.png",
		}
	},

	["pbobatea"] = {
		label = "Pink Boba Tea",
		weight = 100,
		stack = true,
		close = true,
		description = "",
		client = {
			status = {
				thirst = 45,
			},
			image = "bubbleteapink.png",
		}
	},

	["bartsheet"] = {
		label = "Bart Simpson Sheet",
		weight = 100,
		stack = true,
		close = true,
		description = "",
		client = {
			image = "bartsheet.png",
		}
	},

	["pizzaslice"] = {
		label = "Pizza Slice",
		weight = 250,
		stack = true,
		close = true,
		description = "Hmmm nice.",
		client = {
			image = "pizzaslice.png",
		}
	},

	["red_aliens3"] = {
		label = "Triple Stack red aliens",
		weight = 100,
		stack = true,
		close = true,
		description = "",
		client = {
			image = "alien_red.png",
		}
	},

	["bean-cappuccino"] = {
		label = "Cappuccino",
		weight = 1000,
		stack = true,
		close = true,
		description = "",
		client = {
			image = "latte.png",
		}
	},

	["syphoningkit"] = {
		label = "Syphoning Kit",
		weight = 5000,
		stack = false,
		close = false,
		description = "A kit made to siphon gasoline from vehicles.",
		client = {
			image = "syphoningkit.png",
		}
	},

	["tq_water"] = {
		label = "Water",
		weight = 50,
		stack = true,
		close = false,
		description = "",
		client = {
			image = "tq_water.png",
		}
	},

	["burger-sodasyrup"] = {
		label = "Soda Syrup",
		weight = 125,
		stack = true,
		close = true,
		description = "An Ingredient",
		client = {
			image = "bs_ingredients_hfcs.png",
		}
	},

	["burger-potato"] = {
		label = "Bag of Potatoes",
		weight = 1500,
		stack = true,
		close = true,
		description = "An Ingredient",
		client = {
			image = "bs_potato.png",
		}
	},

	["goldbar"] = {
		label = "Gold Bar",
		weight = 7000,
		stack = true,
		close = true,
		description = "Looks pretty expensive to me",
		client = {
			image = "goldbar.png",
		}
	},

	["burger-bleeder"] = {
		label = "Bleeder",
		weight = 250,
		stack = true,
		close = true,
		description = "Sates Hunger.",
		client = {
			image = "bs_the-bleeder.png",
		}
	},

	["cookiesandcreamicecream"] = {
		label = "Cookies & Cream Ice Cream",
		weight = 350,
		stack = true,
		close = true,
		description = "A bowl filled with Cookies & Cream Ice Cream!",
		client = {
			image = "cookiesandcreamicecream.png",
		}
	},

	["mint_gumball"] = {
		label = "Mint GumBall",
		weight = 50,
		stack = true,
		close = true,
		description = "A Mint GumBall from the local Store!",
		client = {
			image = "mint_gumball.png",
		}
	},

	["coke_brick"] = {
		label = "Coke Brick",
		weight = 1000,
		stack = false,
		close = true,
		description = "Heavy package of cocaine, mostly used for deals and takes a lot of space",
		client = {
			image = "coke_brick.png",
		}
	},

	["govbadge"] = {
		label = "Government ID",
		weight = 1000,
		stack = true,
		close = true,
		description = "Special Badge for Government Officials",
		client = {
			image = "govbadge.png",
		}
	},

	["white_cats"] = {
		label = "Single Stack White cats",
		weight = 100,
		stack = true,
		close = true,
		description = "",
		client = {
			image = "kitty_white.png",
		}
	},

	["cargrill"] = {
		label = "Car Grill",
		weight = 850,
		stack = true,
		close = true,
		description = "Front grill chrome alloy from a motor vehicle.",
		client = {
			image = "cargrill.png",
		}
	},

	["diethylamide"] = {
		label = "Diethylamide",
		weight = 100,
		stack = true,
		close = true,
		description = "",
		client = {
			image = "diethylamide.png",
		}
	},

	["pvegicheese"] = {
		label = "Vegetarian Cheese",
		weight = 1000,
		stack = true,
		close = true,
		description = "Vegetarian Cheese",
		client = {
			image = "pvegicheese.png",
		}
	},

	["printerdocument"] = {
		label = "Document",
		weight = 500,
		stack = false,
		close = true,
		description = "A nice document",
		client = {
			image = "printerdocument.png",
		}
	},

	["beer"] = {
		label = "Beer",
		weight = 500,
		stack = true,
		close = true,
		description = "Nothing like a good cold beer!",
		client = {
			image = "beer.png",
		}
	},

	["bbobatea"] = {
		label = "Blue Boba Tea",
		weight = 100,
		stack = true,
		close = true,
		description = "",
		client = {
			status = {
				thirst = 49,
			},
			image = "bubbleteablue.png",
		}
	},

	["gbobatea"] = {
		label = "Green Boba Tea",
		weight = 100,
		stack = true,
		close = true,
		description = "",
		client = {
			status = {
				thirst = 48,
			},
			image = "bubbleteagreen.png",
		}
	},

	["blue_xtc3"] = {
		label = "Triple Stack Blue XTC",
		weight = 100,
		stack = true,
		close = true,
		description = "",
		client = {
			image = "unstampedblue.png",
		}
	},

	["bean-latte"] = {
		label = "Latte",
		weight = 1000,
		stack = true,
		close = true,
		description = "",
		client = {
			image = "latte.png",
		}
	},

	["singlepress"] = {
		label = "Single Pill Press",
		weight = 100,
		stack = true,
		close = true,
		description = "",
		client = {
			image = "pillpress.png",
		}
	},

	["bigfruit"] = {
		label = "The Big Fruit",
		weight = 100,
		stack = true,
		close = true,
		description = "",
		client = {
			status = {
				thirst = 22,
			},
			image = "bigfruit.png",
		}
	},

	["pistol1"] = {
		label = "Pistol Grip",
		weight = 100,
		stack = true,
		close = false,
		description = "The barrel of a Walther P-99 Pistol.",
		client = {
			image = "pistol1.png",
		}
	},

	["cokebaggystagetwo"] = {
		label = "Bag of Good Coke",
		weight = 100,
		stack = true,
		close = true,
		description = "To get happy real quick",
		client = {
			image = "cocaine_baggystagetwo.png",
		}
	},

	["mulchbag"] = {
		label = "Bag of Mulch",
		weight = 1200,
		stack = true,
		close = false,
		description = "A tough and heavy bag of tree mulch, ready to be sold.",
		client = {
			image = "mulchbag.png",
		}
	},

	["goldnuggetpleco"] = {
		label = "Gold Nugget Pleco",
		weight = 150,
		stack = false,
		close = true,
		description = "",
		client = {
			image = "goldnuggetpleco.png",
		}
	},

	["heroinstagetwo"] = {
		label = "Better Heroin",
		weight = 250,
		stack = true,
		close = false,
		description = "",
		client = {
			image = "heroinpowderstagetwo.png",
		}
	},

	["trojan_usb"] = {
		label = "Trojan USB",
		weight = 0,
		stack = true,
		close = true,
		description = "Handy software to shut down some systems",
		client = {
			image = "usb_device.png",
		}
	},

	["crack_baggy"] = {
		label = "Bag of Crack",
		weight = 0,
		stack = true,
		close = true,
		description = "To get happy faster",
		client = {
			image = "crack_baggy.png",
		}
	},

	["bobatea"] = {
		label = "Boba Tea",
		weight = 100,
		stack = true,
		close = true,
		description = "",
		client = {
			status = {
				thirst = 43,
			},
			image = "bubbletea.png",
		}
	},

	["pineapple_tabs"] = {
		label = "Pineapple Tabs",
		weight = 100,
		stack = true,
		close = true,
		description = "",
		client = {
			image = "pineapple_tabs.png",
		}
	},

	["spoiler"] = {
		label = "Car Spoiler",
		weight = 1300,
		stack = true,
		close = true,
		description = "A car spoiler used to improve aerodynamics and slip stream performance of a motor vehicle.",
		client = {
			image = "spoiler.png",
		}
	},

	["antipatharia_coral"] = {
		label = "Antipatharia",
		weight = 1000,
		stack = true,
		close = true,
		description = "Its also known as black corals or thorn corals",
		client = {
			image = "antipatharia_coral.png",
		}
	},

	["pwatercup"] = {
		label = "Water Cup",
		weight = 1000,
		stack = true,
		close = true,
		description = "Water Cup",
		client = {
			image = "pwatercup.png",
		}
	},

	["rice"] = {
		label = "Bowl of Rice",
		weight = 100,
		stack = true,
		close = true,
		description = "",
		client = {
			status = {
				hunger = 46,
			},
			image = "rice.png",
		}
	},

	["pmilk"] = {
		label = "Milk",
		weight = 1000,
		stack = true,
		close = true,
		description = "Milk",
		client = {
			image = "pmilk.png",
		}
	},

	["irishpub_island_fantasy"] = {
		label = "Island Fantasy",
		weight = 50,
		stack = true,
		close = false,
		description = "",
		client = {
			image = "irishpub_island_fantasy.png",
		}
	},

	["security_card_02"] = {
		label = "Security Card B",
		weight = 0,
		stack = true,
		close = true,
		description = "A security card... I wonder what it goes to",
		client = {
			image = "security_card_02.png",
		}
	},

	["tq_sugar"] = {
		label = "Sugar",
		weight = 50,
		stack = true,
		close = false,
		description = "",
		client = {
			image = "tq_sugar.png",
		}
	},

	["xanaxbottle"] = {
		label = "Xanax Bottle",
		weight = 100,
		stack = true,
		close = true,
		description = "",
		client = {
			image = "pillbottle.png",
		}
	},

	["nekocookie"] = {
		label = "Neko Cookie",
		weight = 100,
		stack = true,
		close = true,
		description = "",
		client = {
			status = {
				hunger = 44,
			},
			image = "catcookie.png",
		}
	},

	["brokengameboy"] = {
		label = "Broken Gameboy",
		weight = 200,
		stack = true,
		close = false,
		description = "A Broken Gameboy",
		client = {
			image = "brokengameboy.png",
		}
	},

	["red_playboys"] = {
		label = "Single Stack red Playboys",
		weight = 100,
		stack = true,
		close = true,
		description = "",
		client = {
			image = "playboy_red.png",
		}
	},

	["hb-dblhorn-burger"] = {
		label = "DBL Horn Burger",
		weight = 300,
		stack = true,
		close = true,
		description = "3 Stack Burger!",
		client = {
			image = "hb-dblhorn-burger.png",
		}
	},

	["sapphire_necklace2"] = {
		label = "Old Wet Sapphire Necklace",
		weight = 200,
		stack = true,
		close = false,
		description = "This was found fishing, fair and square!",
		client = {
			image = "sapphire_necklace.png",
		}
	},

	["muffin-chocolate"] = {
		label = "Chocolate Muffin",
		weight = 1000,
		stack = true,
		close = true,
		description = "",
		client = {
			image = "mufchocolate.png",
		}
	},

	["repairkit"] = {
		label = "Repairkit",
		weight = 2500,
		stack = true,
		close = true,
		description = "A nice toolbox with stuff to repair your vehicle",
		client = {
			image = "repairkit.png",
		}
	},

	["keepcompanionmtlion"] = {
		label = "MtLion",
		weight = 500,
		stack = false,
		close = true,
		description = "MtLion is your royal companion!",
		client = {
			image = "A_C_MtLion.png",
		}
	},

	["painkillers"] = {
		label = "Painkillers",
		weight = 0,
		stack = true,
		close = true,
		description = "For pain you can't stand anymore, take this pill that'd make you feel great again",
		client = {
			image = "painkillers.png",
		}
	},

	["flusher"] = {
		label = "The Flusher",
		weight = 100,
		stack = true,
		close = true,
		description = "",
		client = {
			status = {
				thirst = 23,
			},
			image = "flusher.png",
		}
	},

	["blue_xtc2"] = {
		label = "Dual Stack Blue XTC",
		weight = 100,
		stack = true,
		close = true,
		description = "",
		client = {
			image = "unstampedblue.png",
		}
	},

	["papple"] = {
		label = "Apple",
		weight = 1000,
		stack = true,
		close = true,
		description = "Apple",
		client = {
			image = "papple.png",
		}
	},

	["diving_fill"] = {
		label = "Diving Tube",
		weight = 3000,
		stack = false,
		close = true,
		client = {
			image = "diving_tube.png",
		}
	},

	["dendrogyra_coral"] = {
		label = "Dendrogyra",
		weight = 1000,
		stack = true,
		close = true,
		description = "Its also known as pillar coral",
		client = {
			image = "dendrogyra_coral.png",
		}
	},

	["hamburger"] = {
		label = "Hamburger",
		weight = 250,
		stack = true,
		close = true,
		description = "Hmmm nice.",
		client = {
			image = "hamburger.png",
		}
	},

	["emsbag"] = {
		label = "emsbag",
		weight = 150,
		stack = true,
		close = true,
		description = "",
		client = {
			image = "emsbag.png",
		}
	},

	["baggedcrackedstagetwo"] = {
		label = "Better Bag Of Crack",
		weight = 250,
		stack = true,
		close = false,
		description = "",
		client = {
			image = "crackbag2.png",
		}
	},

	["lsd_vial_three"] = {
		label = "Good LSD",
		weight = 100,
		stack = true,
		close = true,
		description = "",
		client = {
			image = "lsd_vial_three.png",
		}
	},

	["pbbqsouce"] = {
		label = "BBQ Souce",
		weight = 1000,
		stack = true,
		close = true,
		description = "BBQ Souce",
		client = {
			image = "pbbqsouce.png",
		}
	},

	["bodycam"] = {
		label = "PD Body Camera",
		weight = 20,
		stack = true,
		close = true,
		description = "Body Camera",
		client = {
			image = "bodycam.png",
		}
	},

	["hb-icecream-cake"] = {
		label = "Icecream Cake",
		weight = 200,
		stack = true,
		close = true,
		description = "Love me some Icecream cake!",
		client = {
			image = "hb-icecream-cake.png",
		}
	},

	["crackrockstagethree"] = {
		label = "Best Crack Rock",
		weight = 250,
		stack = true,
		close = false,
		description = "",
		client = {
			image = "crackrock3.png",
		}
	},

	["heroincut"] = {
		label = "Cut Heroin",
		weight = 250,
		stack = true,
		close = false,
		description = "",
		client = {
			image = "heroinpowder.png",
		}
	},

	["irontrash"] = {
		label = "Iron Trash",
		weight = 200,
		stack = true,
		close = false,
		description = "Trashed Iron",
		client = {
			image = "irontrash.png",
		}
	},

	["hb-hercules"] = {
		label = "Hercules",
		weight = 180,
		stack = true,
		close = true,
		description = "Yummy",
		client = {
			image = "hb-hercules.png",
		}
	},

	["phighcoffeeglasscup"] = {
		label = "High Coffee Glass",
		weight = 1000,
		stack = true,
		close = true,
		description = "Empty High Coffee Glass",
		client = {
			image = "phighcoffeeglasscup.png",
		}
	},

	["minticecream"] = {
		label = "Mint Ice Cream",
		weight = 350,
		stack = true,
		close = true,
		description = "A bowl filled with Mint Ice Cream!",
		client = {
			image = "minticecream.png",
		}
	},

	["morphine_prescription"] = {
		label = "Morphine Prescription",
		weight = 250,
		stack = true,
		close = false,
		description = "",
		client = {
			image = "morphineprescription.png",
		}
	},

	["bbq4"] = {
		label = "BBQ Pit",
		weight = 200,
		stack = true,
		close = true,
		description = "A Sturdy BBQ Pit.",
		client = {
			image = "bbq4.png",
		}
	},

	["whiptailcatfish"] = {
		label = "Whiptail Catfish",
		weight = 150,
		stack = false,
		close = true,
		description = "",
		client = {
			image = "whiptailcatfish.png",
		}
	},

	["ptomatoes"] = {
		label = "Fresh Tomatoes",
		weight = 1000,
		stack = true,
		close = true,
		description = "Fresh Tomatoes",
		client = {
			image = "ptomatoes.png",
		}
	},

	["meatboar"] = {
		label = "Boar Tusks",
		weight = 100,
		stack = true,
		close = false,
		description = "Boar Tusks",
		client = {
			image = "boartusks.png",
		}
	},

	["tq_watermelon_dream"] = {
		label = "Watermelon Dream",
		weight = 50,
		stack = true,
		close = false,
		description = "",
		client = {
			image = "tq_watermelon_dream.png",
		}
	},

	["portablecopier"] = {
		label = "Portable Document Copier",
		weight = 10,
		stack = false,
		close = false,
		description = "If you have this machine you will be able to duplicate documents.",
		client = {
			image = "portablecopier.png",
		}
	},

	["finescale"] = {
		label = "Fine Scale",
		weight = 200,
		stack = true,
		close = false,
		description = "Scale Used for Fine Powders and Materials.",
		client = {
			image = "finescale.png",
		}
	},

	["adderalbottle"] = {
		label = "Adderal Bottle",
		weight = 100,
		stack = true,
		close = true,
		description = "",
		client = {
			image = "pillbottle.png",
		}
	},

	["slicedpotato"] = {
		label = "Sliced Potatoes",
		weight = 500,
		stack = true,
		close = false,
		description = "Sliced Potato",
		client = {
			image = "burger-slicedpotato.png",
		}
	},

	["burger-bun"] = {
		label = "Bun",
		weight = 125,
		stack = true,
		close = true,
		description = "An Ingredient",
		client = {
			image = "bs_bun.png",
		}
	},

	["irishpub_cake"] = {
		label = "Cake",
		weight = 50,
		stack = true,
		close = false,
		description = "",
		client = {
			image = "irishpub_cake.png",
		}
	},

	["rawpork"] = {
		label = "Raw Pork",
		weight = 100,
		stack = true,
		close = true,
		description = "Yum! Cereal",
		client = {
			image = "rawpork.png",
		}
	},

	["ace"] = {
		label = "Ace of Spades",
		weight = 100,
		stack = true,
		close = false,
		description = "An old trading card - kinda crusty...",
		client = {
			image = "ace.png",
		}
	},

	["cobia"] = {
		label = "Cobia",
		weight = 150,
		stack = false,
		close = true,
		description = "",
		client = {
			image = "cobia.png",
		}
	},

	["meatfree"] = {
		label = "Meat Free",
		weight = 200,
		stack = true,
		close = true,
		description = "Meat Free",
		client = {
			status = {
				hunger = 47,
			},
			image = "burger-meatfree.png",
		}
	},

	["northernpike"] = {
		label = "Northern Pike",
		weight = 150,
		stack = false,
		close = true,
		description = "",
		client = {
			image = "northernpike.png",
		}
	},

	["pmenu"] = {
		label = "Pizza This Menu",
		weight = 1000,
		stack = true,
		close = true,
		description = "Pizza This Menu",
		client = {
			image = "pmenu.png",
		}
	},

	["sapphire_necklace_silver2"] = {
		label = "Old Wet Sapphire Necklace Silver",
		weight = 200,
		stack = true,
		close = false,
		description = "This was found fishing, fair and square!",
		client = {
			image = "sapphire_necklace_silver.png",
		}
	},

	["casino_beer"] = {
		label = "Casino Beer",
		weight = 0,
		stack = false,
		close = false,
		description = "Casino Beer",
		client = {
			image = "casino_beer.png",
		}
	},

	["huntingbait"] = {
		label = "Hunting Bait",
		weight = 150,
		stack = true,
		close = true,
		description = "Hunting Bait",
		client = {
			image = "huntingbait.png",
		}
	},

	["red_pl"] = {
		label = "Single Stack red pl",
		weight = 100,
		stack = true,
		close = true,
		description = "",
		client = {
			image = "PL_red.png",
		}
	},

	["pam"] = {
		label = "AM Beer",
		weight = 1000,
		stack = true,
		close = true,
		description = "AM Beer",
		client = {
			image = "pam.png",
		}
	},

	["diamond_ring"] = {
		label = "Diamond Ring",
		weight = 1500,
		stack = true,
		close = true,
		description = "A diamond ring seems like the jackpot to me!",
		client = {
			image = "diamond_ring.png",
		}
	},

	["irishpub_water"] = {
		label = "Water",
		weight = 50,
		stack = true,
		close = false,
		description = "",
		client = {
			image = "irishpub_water.png",
		}
	},

	["emptybottle"] = {
		label = "Empty bottle",
		weight = 300,
		stack = true,
		close = false,
		description = "Makes a satisfying crunch when you press on it, not a single drop left...",
		client = {
			image = "emptybottle.png",
		}
	},

	["diving_gear"] = {
		label = "Diving Gear",
		weight = 30000,
		stack = false,
		close = true,
		description = "An oxygen tank and a rebreather",
		client = {
			image = "diving_gear.png",
		}
	},

	["white_pl2"] = {
		label = "Dual Stack White pl",
		weight = 100,
		stack = true,
		close = true,
		description = "",
		client = {
			image = "PL_white.png",
		}
	},

	["goldennugget"] = {
		label = "The Mojave Nugget",
		weight = 200,
		stack = true,
		close = false,
		description = "This seems valuable, hmm",
		client = {
			image = "goldnugget.png",
		}
	},

	["pparmesancheese"] = {
		label = "Parmesan Cheese",
		weight = 1000,
		stack = true,
		close = true,
		description = "Parmesan Cheese",
		client = {
			image = "pparmesancheese.png",
		}
	},

	["hb-lettuce"] = {
		label = "Lettuce",
		weight = 100,
		stack = true,
		close = true,
		description = "Ingredient",
		client = {
			image = "hb-lettuce.png",
		}
	},

	["treebark"] = {
		label = "Tree Bark",
		weight = 200,
		stack = true,
		close = false,
		description = "Wooden bark stripped away from what looks like a pine tree.",
		client = {
			image = "treebark.png",
		}
	},

	["pwater"] = {
		label = "Water",
		weight = 1000,
		stack = true,
		close = true,
		description = "Water",
		client = {
			image = "pwater.png",
		}
	},

	["boba"] = {
		label = "Boba",
		weight = 100,
		stack = true,
		close = true,
		description = "",
		client = {
			status = {
				hunger = 45,
			},
			image = "boba.png",
		}
	},

	["gt-cooked_beef"] = {
		label = "Cooked Beef",
		weight = 100,
		stack = true,
		close = true,
		description = "Might be used to make something",
		client = {
			image = "gt-cookedbeef.png",
		}
	},

	["irishpub_banana"] = {
		label = "Banana",
		weight = 50,
		stack = true,
		close = false,
		description = "",
		client = {
			image = "irishpub_banana.png",
		}
	},

	["security_card_01"] = {
		label = "Security Card A",
		weight = 0,
		stack = true,
		close = true,
		description = "A security card... I wonder what it goes to",
		client = {
			image = "security_card_01.png",
		}
	},

	["pgaryfarrel"] = {
		label = "Gary Garrel Red Wine",
		weight = 1000,
		stack = true,
		close = true,
		description = "Gary Farrel Red Wine",
		client = {
			image = "pgaryfarrel.png",
		}
	},

	["loosecokestagethree"] = {
		label = "Purest Loose Coke",
		weight = 100,
		stack = true,
		close = true,
		description = "",
		client = {
			image = "loosecokestagethree.png",
		}
	},

	["orange_xtc2"] = {
		label = "Dual Stack Orange XTC",
		weight = 100,
		stack = true,
		close = true,
		description = "",
		client = {
			image = "unstampedorange.png",
		}
	},

	["blue_aliens4"] = {
		label = "Quad Stack blue aliens",
		weight = 100,
		stack = true,
		close = true,
		description = "",
		client = {
			image = "alien_blue.png",
		}
	},

	["weed_og-kush"] = {
		label = "OGKush 2g",
		weight = 200,
		stack = true,
		close = false,
		description = "A weed bag with 2g OG Kush",
		client = {
			image = "weed_baggy.png",
		}
	},

	["dirtylsdlabkit"] = {
		label = "Dirty LSD Mixing Table",
		weight = 1000,
		stack = true,
		close = true,
		description = "",
		client = {
			image = "labkit_dirty.png",
		}
	},

	["milk"] = {
		label = "Milk",
		weight = 300,
		stack = true,
		close = true,
		description = "Carton of Milk",
		client = {
			status = {
				thirst = 36,
			},
			image = "burger-milk.png",
		}
	},

	["burger-softdrink"] = {
		label = "Soft Drink",
		weight = 125,
		stack = true,
		close = true,
		description = "An Ice Cold Drink.",
		client = {
			image = "bs_softdrink.png",
		}
	},

	["heroinvialstagethree"] = {
		label = "Best Vial Of Heroin",
		weight = 250,
		stack = true,
		close = false,
		description = "",
		client = {
			image = "heroinstagethree.png",
		}
	},

	["salmon"] = {
		label = "Salmon",
		weight = 150,
		stack = false,
		close = true,
		description = "",
		client = {
			image = "salmon.png",
		}
	},

	["firework3"] = {
		label = "WipeOut",
		weight = 1000,
		stack = true,
		close = true,
		description = "Fireworks",
		client = {
			image = "firework3.png",
		}
	},

	["moneybag"] = {
		label = "Money Bag",
		weight = 0,
		stack = false,
		close = true,
		description = "A bag with cash",
		client = {
			image = "moneybag.png",
		}
	},

	["rockbass"] = {
		label = "Rock Bass",
		weight = 150,
		stack = false,
		close = true,
		description = "",
		client = {
			image = "rockbass.png",
		}
	},

	["wallet"] = {
		label = "Old Wallet",
		weight = 350,
		stack = true,
		close = false,
		description = "Feels like leather... Clearly been used and abused though...",
		client = {
			image = "wallet.png",
		}
	},

	["gt-enchilada_sauce"] = {
		label = "Enchilada Sauce",
		weight = 100,
		stack = true,
		close = true,
		description = "Might be used to make something",
		client = {
			image = "gt-enchiladasauce.png",
		}
	},

	["empty_weed_bag"] = {
		label = "Empty Weed Bag",
		weight = 0,
		stack = true,
		close = true,
		description = "A small empty bag",
		client = {
			image = "weed_baggy_empty.png",
		}
	},

	["hb-patty-raw"] = {
		label = "Raw Patty",
		weight = 210,
		stack = true,
		close = true,
		description = "Ingredient",
		client = {
			image = "hb-patty-raw.png",
		}
	},

	["orange_trolls3"] = {
		label = "Tritrollse Stack orange trolls",
		weight = 100,
		stack = true,
		close = true,
		description = "",
		client = {
			image = "troll_orange.png",
		}
	},

	["red_pl2"] = {
		label = "Dual Stack red pl",
		weight = 100,
		stack = true,
		close = true,
		description = "",
		client = {
			image = "PL_red.png",
		}
	},

	["visa"] = {
		label = "Visa Card",
		weight = 0,
		stack = false,
		close = false,
		description = "Visa can be used via ATM",
		client = {
			image = "visacard.png",
		}
	},

	["cookedsausage"] = {
		label = "Cooked Sausage",
		weight = 100,
		stack = true,
		close = true,
		description = "",
		client = {
			image = "cookedsausage.png",
		}
	},

	["tq_banana_nut"] = {
		label = "banana nut",
		weight = 50,
		stack = true,
		close = false,
		description = "",
		client = {
			image = "tq_banana_nut.png",
		}
	},

	["blue_cats"] = {
		label = "Single Stack blue cats",
		weight = 100,
		stack = true,
		close = true,
		description = "",
		client = {
			image = "kitty_blue.png",
		}
	},

	["pistol2"] = {
		label = "Slide Assembly",
		weight = 100,
		stack = true,
		close = false,
		description = "The frame of a Walther P-99 Pistol.",
		client = {
			image = "pistol2.png",
		}
	},

	["panaque"] = {
		label = "Panaque",
		weight = 150,
		stack = false,
		close = true,
		description = "",
		client = {
			image = "panaque.png",
		}
	},

	["fishingtin"] = {
		label = "Fishing Tin",
		weight = 2500,
		stack = true,
		close = false,
		description = "Fishing Tin",
		client = {
			image = "fishingtin.png",
		}
	},

	["funkopop_draco"] = {
		label = "Draco Malfoy Funkopop",
		weight = 0,
		stack = true,
		close = false,
		description = "Draco Malfoy Funkopop Toy",
		client = {
			image = "funkopop_draco.png",
		}
	},

	["white_trolls"] = {
		label = "Single Stack White trolls",
		weight = 100,
		stack = true,
		close = true,
		description = "",
		client = {
			image = "troll_white.png",
		}
	},

	["blue_xtc4"] = {
		label = "Quad Stack Blue XTC",
		weight = 100,
		stack = true,
		close = true,
		description = "",
		client = {
			image = "unstampedblue.png",
		}
	},

	["labkey"] = {
		label = "Key",
		weight = 500,
		stack = false,
		close = true,
		description = "Key for a lock...?",
		client = {
			image = "labkey.png",
		}
	},

	["orange_pl3"] = {
		label = "Triple Stack orange pl",
		weight = 100,
		stack = true,
		close = true,
		description = "",
		client = {
			image = "PL_orange.png",
		}
	},

	["bass"] = {
		label = "Bass",
		weight = 1250,
		stack = false,
		close = false,
		description = "A normal fish Tatses pretty good!",
		client = {
			image = "bass.png",
		}
	},

	["white_trolls2"] = {
		label = "Dual Stack White trolls",
		weight = 100,
		stack = true,
		close = true,
		description = "",
		client = {
			image = "troll_white.png",
		}
	},

	["weed_brick"] = {
		label = "Weed Brick",
		weight = 1000,
		stack = true,
		close = true,
		description = "1KG Weed Brick to sell to large customers.",
		client = {
			image = "weed_brick.png",
		}
	},

	["hb-hot-sauce"] = {
		label = "Hot Sauce",
		weight = 125,
		stack = true,
		close = true,
		description = "Ingredient",
		client = {
			image = "hb-hot-sauce.png",
		}
	},

	["tq_banana"] = {
		label = "Banana",
		weight = 50,
		stack = true,
		close = false,
		description = "",
		client = {
			image = "tq_banana.png",
		}
	},

	["blue_trolls3"] = {
		label = "Tritrollse Stack blue trolls",
		weight = 100,
		stack = true,
		close = true,
		description = "",
		client = {
			image = "troll_blue.png",
		}
	},

	["snikkel_candy"] = {
		label = "Snikkel",
		weight = 100,
		stack = true,
		close = true,
		description = "Some delicious candy :O",
		client = {
			image = "snikkel_candy.png",
		}
	},

	["wood_plank"] = {
		label = "Wood Plank",
		weight = 50,
		stack = true,
		close = true,
		description = "",
		client = {
			image = "woodplank.png",
		}
	},

	["blueberry_gumball"] = {
		label = "Blueberry GumBall",
		weight = 50,
		stack = true,
		close = true,
		description = "A Blueberry GumBall from the local Store!",
		client = {
			image = "blueberry_gumball.png",
		}
	},

	["killerwhale"] = {
		label = "Whale",
		weight = 15000,
		stack = false,
		close = false,
		description = "Killer Whale",
		client = {
			image = "killerwhale.png",
		}
	},

	["bbq5"] = {
		label = "BBQ Pit",
		weight = 200,
		stack = true,
		close = true,
		description = "A Sturdy BBQ Pit.",
		client = {
			image = "bbq5.png",
		}
	},

	["red_cats2"] = {
		label = "Dual Stack red cats",
		weight = 100,
		stack = true,
		close = true,
		description = "",
		client = {
			image = "kitty_red.png",
		}
	},

	["sandwich"] = {
		label = "Sandwich",
		weight = 200,
		stack = true,
		close = true,
		description = "Nice bread for your stomach",
		client = {
			image = "sandwich.png",
		}
	},

	["codfish"] = {
		label = "Cod",
		weight = 2500,
		stack = false,
		close = false,
		description = "Cod",
		client = {
			image = "codfish.png",
		}
	},

	["blue_playboys3"] = {
		label = "Triple Stack blue Playboys",
		weight = 100,
		stack = true,
		close = true,
		description = "",
		client = {
			image = "playboy_blue.png",
		}
	},

	["hulkcocktail"] = {
		label = "Hulk Cocktail",
		weight = 250,
		stack = true,
		close = true,
		description = "Cyber Bar Is The Best.",
		client = {
			image = "hulkcocktail.png",
		}
	},

	["gt-salsa"] = {
		label = "Salsa",
		weight = 100,
		stack = true,
		close = true,
		description = "Might be used to make something",
		client = {
			image = "gt-salsa.png",
		}
	},

	["petnametag"] = {
		label = "Name tag",
		weight = 500,
		stack = true,
		close = true,
		description = "Rename your pet",
		client = {
			image = "petnametag.png",
		}
	},

	["bscoke"] = {
		label = "BurgerShot Coke",
		weight = 200,
		stack = true,
		close = true,
		description = "BurgerShot Cola",
		client = {
			status = {
				thirst = 53,
			},
			image = "burger-softdrink.png",
		}
	},

	["sharkhammer"] = {
		label = "Shark",
		weight = 5000,
		stack = false,
		close = false,
		description = "Hammerhead Shark",
		client = {
			image = "sharkhammer.png",
		}
	},

	["musky"] = {
		label = "Musky",
		weight = 150,
		stack = false,
		close = true,
		description = "",
		client = {
			image = "musky.png",
		}
	},

	["white_aliens4"] = {
		label = "Quad Stack White aliens",
		weight = 100,
		stack = true,
		close = true,
		description = "",
		client = {
			image = "alien_white.png",
		}
	},

	["white_xtc2"] = {
		label = "Dual Stack White XTC",
		weight = 100,
		stack = true,
		close = true,
		description = "",
		client = {
			image = "unstampedwhite.png",
		}
	},

	["morphinebottle"] = {
		label = "Morphine Bottle",
		weight = 100,
		stack = true,
		close = true,
		description = "",
		client = {
			image = "pillbottle.png",
		}
	},

	["gt-refried_beans"] = {
		label = "Refried Beans",
		weight = 100,
		stack = true,
		close = true,
		description = "Might be used to make something",
		client = {
			image = "gt-refriedbeans.png",
		}
	},

	["red_pl4"] = {
		label = "Quad Stack red pl",
		weight = 100,
		stack = true,
		close = true,
		description = "",
		client = {
			image = "PL_red.png",
		}
	},

	["camera"] = {
		label = "Camera",
		weight = 1000,
		stack = false,
		close = true,
		description = "Camera to take pretty pictures.",
		client = {
			image = "camera.png",
		}
	},

	["rawbeef"] = {
		label = "Raw Steak",
		weight = 100,
		stack = true,
		close = true,
		description = "This butter sure do smell funny",
		client = {
			image = "rawbeef.png",
		}
	},

	["irishpub_orange_juice"] = {
		label = "Orange Juice",
		weight = 50,
		stack = true,
		close = false,
		description = "",
		client = {
			image = "irishpub_orange_juice.png",
		}
	},

	["tq_kiwi"] = {
		label = "Kiwi",
		weight = 50,
		stack = true,
		close = false,
		description = "",
		client = {
			image = "tq_kiwi.png",
		}
	},

	["hb-tomato"] = {
		label = "Tomato",
		weight = 100,
		stack = true,
		close = true,
		description = "Ingredient",
		client = {
			image = "hb-tomato.png",
		}
	},

	["tablet"] = {
		label = "Tablet",
		weight = 2000,
		stack = true,
		close = true,
		description = "Expensive tablet",
		client = {
			image = "tablet.png",
		}
	},

	["fitbit"] = {
		label = "Fitbit",
		weight = 500,
		stack = false,
		close = true,
		description = "I like fitbit",
		client = {
			image = "fitbit.png",
		}
	},

	["pseafoodslice"] = {
		label = "Seafood Slice",
		weight = 1000,
		stack = true,
		close = true,
		description = "Seafood Slice",
		client = {
			image = "ppizzaslice.png",
		}
	},

	["blankusb"] = {
		label = "Blank USB",
		weight = 0,
		stack = true,
		close = true,
		description = "Non-descript USB, wonder if there is anything on it?",
		client = {
			image = "blankusb.png",
		}
	},

	["hb-chicken-hornstars"] = {
		label = "Chicken Hornstars",
		weight = 100,
		stack = true,
		close = true,
		description = "Little Hornstars",
		client = {
			image = "hb-chicken-hornstars.png",
		}
	},

	["casino_sprite"] = {
		label = "Casino Sprite",
		weight = 0,
		stack = false,
		close = false,
		description = "Casino Sprite",
		client = {
			image = "casino_sprite.png",
		}
	},

	["tree_lumber"] = {
		label = "Lumber",
		weight = 50,
		stack = true,
		close = true,
		description = "",
		client = {
			image = "lumber.png",
		}
	},

	["chocolateicecream"] = {
		label = "Chocolate Ice Cream",
		weight = 350,
		stack = true,
		close = true,
		description = "A bowl filled with Chocolate Ice Cream!",
		client = {
			image = "chocolateicecream.png",
		}
	},

	["prum"] = {
		label = "Rum",
		weight = 1000,
		stack = true,
		close = true,
		description = "Rum",
		client = {
			image = "prum.png",
		}
	},

	["keepcompanioncat"] = {
		label = "Cat",
		weight = 500,
		stack = false,
		close = true,
		description = "Cat is your royal companion!",
		client = {
			image = "A_C_Cat_01.png",
		}
	},

	["dvrcocktail"] = {
		label = "DVR Cocktail",
		weight = 250,
		stack = true,
		close = true,
		description = "Cyber Bar Is The Best.",
		client = {
			image = "dvrcocktail.png",
		}
	},

	["cherry_gumball"] = {
		label = "Cherry GumBall",
		weight = 50,
		stack = true,
		close = true,
		description = "A Cherry GumBall from the local Store!",
		client = {
			image = "cherry_gumball.png",
		}
	},

	["flounder"] = {
		label = "Flounder",
		weight = 2500,
		stack = false,
		close = false,
		description = "Flounder",
		client = {
			image = "flounder.png",
		}
	},

	["pwhitewinebottle"] = {
		label = "White Wine Bottle",
		weight = 1000,
		stack = true,
		close = true,
		description = "White Wine Bottle",
		client = {
			image = "pwhitewinebottle.png",
		}
	},

	["gt-chicken_combo_meal"] = {
		label = "Chicken Combo Meal",
		weight = 100,
		stack = true,
		close = true,
		description = "Gunnar made a whole combo meal, better hope you get something special...",
		client = {
			image = "gt-combomeal.png",
		}
	},

	["irishpub_coffee_heart"] = {
		label = "Coffee Heart",
		weight = 50,
		stack = true,
		close = false,
		description = "",
		client = {
			image = "irishpub_coffee_heart.png",
		}
	},

	["hb-chicken-fillets"] = {
		label = "Chicken Fillets",
		weight = 200,
		stack = true,
		close = true,
		description = "Plenty of Fillets",
		client = {
			image = "hb-chicken-fillets.png",
		}
	},

	["hb-cheddar"] = {
		label = "Cheddar Cheese",
		weight = 125,
		stack = true,
		close = true,
		description = "Ingredient",
		client = {
			image = "hb-cheddar.png",
		}
	},

	["hb-raine"] = {
		label = "Raine",
		weight = 180,
		stack = true,
		close = true,
		description = "Good ol water",
		client = {
			image = "hb-raine.png",
		}
	},

	["keepcompanionhen"] = {
		label = "Hen",
		weight = 500,
		stack = false,
		close = true,
		description = "Hen is your royal companion!",
		client = {
			image = "A_C_Hen.png",
		}
	},

	["bscoffee"] = {
		label = "BurgerShot Coffee",
		weight = 200,
		stack = true,
		close = true,
		description = "BurgerShot Coffee",
		client = {
			status = {
				thirst = 36,
			},
			image = "burger-coffee.png",
		}
	},

	["chocolate"] = {
		label = "Chocolate",
		weight = 200,
		stack = true,
		close = false,
		description = "Chocolate Bar",
		client = {
			status = {
				hunger = 14,
			},
			image = "chocolate.png",
		}
	},

	["hb-sausages"] = {
		label = "Sausages",
		weight = 150,
		stack = true,
		close = true,
		description = "Pork Sausages",
		client = {
			image = "hb-sausages.png",
		}
	},

	["shroombaggy"] = {
		label = "Empty Bag",
		weight = 100,
		stack = true,
		close = false,
		description = "A small plastic bag, cheap and easy to store perishables temporarily.",
		client = {
			image = "shroombaggy.png",
		}
	},

	["gt-cooked_chicken"] = {
		label = "Cooked Chicken",
		weight = 100,
		stack = true,
		close = true,
		description = "Might be used to make something",
		client = {
			image = "gt-cookedchicken.png",
		}
	},

	["miso"] = {
		label = "Miso Soup",
		weight = 100,
		stack = true,
		close = true,
		description = "",
		client = {
			status = {
				hunger = 47,
			},
			image = "miso.png",
		}
	},

	["rhinohorn"] = {
		label = "Rhino Horn",
		weight = 100,
		stack = true,
		close = true,
		description = "",
		client = {
			image = "rhinohorn.png",
		}
	},

	["heroin_readystagethree"] = {
		label = "Syringe Of Best Heroin",
		weight = 250,
		stack = true,
		close = false,
		description = "",
		client = {
			image = "heroin_readystagethree.png",
		}
	},

	["chemicals"] = {
		label = "Chemicals",
		weight = 1500,
		stack = true,
		close = false,
		description = "Chemicals, handle with care...",
		client = {
			image = "chemicals.png",
		}
	},

	["baggedcrackedstagethree"] = {
		label = "Best Bag Of Crack",
		weight = 250,
		stack = true,
		close = false,
		description = "",
		client = {
			image = "crackbag3.png",
		}
	},

	["weed_nutrition"] = {
		label = "Plant Fertilizer",
		weight = 2000,
		stack = true,
		close = true,
		description = "Plant nutrition",
		client = {
			image = "weed_nutrition.png",
		}
	},

	["hb-hornburger"] = {
		label = "Horn Burger",
		weight = 250,
		stack = true,
		close = true,
		description = "Classic Burger",
		client = {
			image = "hb-hornburger.png",
		}
	},

	["red_cats3"] = {
		label = "Tricatse Stack red cats",
		weight = 100,
		stack = true,
		close = true,
		description = "",
		client = {
			image = "kitty_red.png",
		}
	},

	["crackrock"] = {
		label = "Crack Rock",
		weight = 250,
		stack = true,
		close = false,
		description = "",
		client = {
			image = "crackrock1.png",
		}
	},

	["ww2relic"] = {
		label = "WW2 Relic",
		weight = 200,
		stack = true,
		close = false,
		description = "I rememeber this from history class.",
		client = {
			image = "ww2relic.png",
		}
	},

	["yellowslushy"] = {
		label = "Yellow Slushy",
		weight = 750,
		stack = false,
		close = true,
		description = "Damn a Slushy...",
		client = {
			image = "yellowslushy.png",
		}
	},

	["radioscanner"] = {
		label = "Radio Scanner",
		weight = 1000,
		stack = true,
		close = true,
		description = "With this you can get some police alerts. Not 100% effective however",
		client = {
			image = "radioscanner.png",
		}
	},

	["burger-lettuce"] = {
		label = "Lettuce",
		weight = 125,
		stack = true,
		close = true,
		description = "An Ingredient",
		client = {
			image = "bs_lettuce.png",
		}
	},

	["thionyl_chloride"] = {
		label = "Thionyl Chloride",
		weight = 1500,
		stack = true,
		close = false,
		description = "Chemicals, handle with care!",
		client = {
			image = "thionyl_chloride.png",
		}
	},

	["crackburner"] = {
		label = "Juke Burner",
		weight = 100,
		stack = true,
		close = true,
		description = "",
		client = {
			image = "crackburner.png",
		}
	},

	["pregularpasta"] = {
		label = "Regular Pasta",
		weight = 1000,
		stack = true,
		close = true,
		description = "Regular Pasta",
		client = {
			image = "pregularpasta.png",
		}
	},

	["diamond_necklace_silver2"] = {
		label = "Old Wet Diamond Necklace Silver",
		weight = 200,
		stack = true,
		close = false,
		description = "This was found fishing, fair and square!",
		client = {
			image = "diamond_necklace_silver.png",
		}
	},

	["hb-icecream-nuggets"] = {
		label = "Icecream Nuggets",
		weight = 125,
		stack = true,
		close = true,
		description = "I like nuggets and I like icecream...",
		client = {
			image = "hb-icecream-nuggets.png",
		}
	},

	["hb-eggsbacon"] = {
		label = "Eggs N Bacon With Toast",
		weight = 250,
		stack = true,
		close = true,
		description = "Yummy Bacon N Eggs!",
		client = {
			image = "hb-eggsbacon.png",
		}
	},

	["orange_aliens"] = {
		label = "Single Stack orange aliens",
		weight = 100,
		stack = true,
		close = true,
		description = "",
		client = {
			image = "alien_orange.png",
		}
	},

	["mining_ironfragment"] = {
		label = "Iron Fragment",
		weight = 500,
		stack = true,
		close = true,
		description = "Iron fragment from mining",
		client = {
			image = "mining_ironfragment.png",
		}
	},

	["drill"] = {
		label = "Drill",
		weight = 20000,
		stack = true,
		close = false,
		description = "The real deal...",
		client = {
			image = "drill.png",
		}
	},

	["cupcake-baunilha"] = {
		label = "Vanilla Cupcake",
		weight = 1000,
		stack = true,
		close = true,
		description = "",
		client = {
			image = "cuplimao.png",
		}
	},

	["cheddar"] = {
		label = "Cheddar Slice",
		weight = 500,
		stack = true,
		close = false,
		description = "Slice of Cheese",
		client = {
			image = "cheddar.png",
		}
	},

	["creampie"] = {
		label = "Creampie",
		weight = 200,
		stack = true,
		close = true,
		description = "BurgerShot Apple Pie",
		client = {
			status = {
				hunger = 42,
			},
			image = "burger-creampie.png",
		}
	},

	["brokenphone"] = {
		label = "Broken Phone",
		weight = 200,
		stack = true,
		close = false,
		description = "Broken Phone",
		client = {
			image = "brokenphone.png",
		}
	},

	["funkopop_ron"] = {
		label = "Ron Funkopop",
		weight = 0,
		stack = true,
		close = false,
		description = "Ron Funkopop Toy",
		client = {
			image = "funkopop_ron.png",
		}
	},

	["weed_skunk_seed"] = {
		label = "Skunk Seed",
		weight = 0,
		stack = true,
		close = true,
		description = "A weed seed of Skunk",
		client = {
			image = "weed_seed.png",
		}
	},

	["tq_kamikaze"] = {
		label = "Kamikaze",
		weight = 50,
		stack = true,
		close = false,
		description = "",
		client = {
			image = "tq_kamikaze.png",
		}
	},

	["policetablet"] = {
		label = "Police Tablet",
		weight = 5000,
		stack = false,
		close = true,
		description = "A mobile fingerprint tablet.",
		client = {
			image = "policetablet.png",
		}
	},

	["funkopop_hagrid"] = {
		label = "Hagrid Funkopop",
		weight = 0,
		stack = true,
		close = false,
		description = "Hagrid Funkopop Toy",
		client = {
			image = "funkopop_hagrid.png",
		}
	},

	["blue_aliens"] = {
		label = "Single Stack blue aliens",
		weight = 100,
		stack = true,
		close = true,
		description = "",
		client = {
			image = "alien_blue.png",
		}
	},

	["fishingloot"] = {
		label = "Metal Box",
		weight = 500,
		stack = true,
		close = true,
		description = "Seems to be a corroded from the salt water, Should be easy to open",
		client = {
			image = "fishingloot.png",
		}
	},

	["hb-bacon"] = {
		label = "Bacon",
		weight = 150,
		stack = true,
		close = true,
		description = "Ingredient",
		client = {
			image = "hb-bacon.png",
		}
	},

	["emptymulchbag"] = {
		label = "Empty Mulch Bag",
		weight = 200,
		stack = true,
		close = false,
		description = "A tough and durable bag capable of holding many kilograms of product.",
		client = {
			image = "emptymulchbag.png",
		}
	},

	["slicedonion"] = {
		label = "Sliced Onions",
		weight = 500,
		stack = true,
		close = false,
		description = "Sliced Onion",
		client = {
			image = "burger-slicedonion.png",
		}
	},

	["blue_xtc"] = {
		label = "Single Stack Blue XTC",
		weight = 100,
		stack = true,
		close = true,
		description = "",
		client = {
			image = "unstampedblue.png",
		}
	},

	["gatecrack"] = {
		label = "Gatecrack",
		weight = 0,
		stack = true,
		close = true,
		description = "Handy software to tear down some fences",
		client = {
			image = "usb_device.png",
		}
	},

	["casino_donut"] = {
		label = "Casino Donut",
		weight = 0,
		stack = false,
		close = false,
		description = "Casino Donut",
		client = {
			image = "casino_donut.png",
		}
	},

	["irishpub_cheese"] = {
		label = "Cheese",
		weight = 50,
		stack = true,
		close = false,
		description = "",
		client = {
			image = "irishpub_cheese.png",
		}
	},

	["panqueca-mel"] = {
		label = "Honey Pancake",
		weight = 1000,
		stack = true,
		close = true,
		description = "",
		client = {
			image = "panutela.png",
		}
	},

	["rainbowslushy"] = {
		label = "Rainbow Slushy",
		weight = 750,
		stack = false,
		close = true,
		description = "Damn a Slushy...",
		client = {
			image = "rainbowslushy.png",
		}
	},

	["pbasil"] = {
		label = "Basil",
		weight = 1000,
		stack = true,
		close = true,
		description = "Basil",
		client = {
			image = "pbasil.png",
		}
	},

	["funkopop_moaningmertle"] = {
		label = "Moaning Mertle Funkopop",
		weight = 0,
		stack = true,
		close = false,
		description = "Moaning Mertle Funkopop Toy",
		client = {
			image = "funkopop_moaningmertle.png",
		}
	},

	["tq_coconut_drink"] = {
		label = "Coconut Drink",
		weight = 50,
		stack = true,
		close = false,
		description = "",
		client = {
			image = "tq_coconut_drink.png",
		}
	},

	["nori"] = {
		label = "Nori",
		weight = 100,
		stack = true,
		close = true,
		description = "",
		client = {
			image = "nori.png",
		}
	},

	["pcheddarcheese"] = {
		label = "Cheddar Cheese",
		weight = 1000,
		stack = true,
		close = true,
		description = "Cheddar Cheese",
		client = {
			image = "pcheddarcheese.png",
		}
	},

	["hb-chicken-burger"] = {
		label = "Chicken Burger",
		weight = 250,
		stack = true,
		close = true,
		description = "Classic Chicken Burger",
		client = {
			image = "hb-chicken-burger.png",
		}
	},

	["tq_coffee_heart"] = {
		label = "Coffee Heart",
		weight = 50,
		stack = true,
		close = false,
		description = "",
		client = {
			image = "tq_coffee_heart.png",
		}
	},

	["tq_chocolate_cake"] = {
		label = "Chocolate Cake",
		weight = 50,
		stack = true,
		close = false,
		description = "",
		client = {
			image = "tq_chocolate_cake.png",
		}
	},

	["burgerbun"] = {
		label = "Burger Bun",
		weight = 100,
		stack = true,
		close = false,
		description = "Some big burger brother",
		client = {
			image = "burgerbun.png",
		}
	},

	["white_aliens3"] = {
		label = "Triple Stack White aliens",
		weight = 100,
		stack = true,
		close = true,
		description = "",
		client = {
			image = "alien_white.png",
		}
	},

	["diamond_earring2"] = {
		label = "Old Wet Diamond Earrings",
		weight = 200,
		stack = true,
		close = false,
		description = "This was found fishing, fair and square!",
		client = {
			image = "diamond_earring.png",
		}
	},

	["tq_milk"] = {
		label = "Milk",
		weight = 50,
		stack = true,
		close = false,
		description = "",
		client = {
			image = "tq_milk.png",
		}
	},

	["cheesecake"] = {
		label = "Cheese Cake",
		weight = 100,
		stack = true,
		close = true,
		description = "",
		client = {
			status = {
				hunger = 21,
			},
			image = "cheesecake.png",
		}
	},

	["pcream"] = {
		label = "Whipped Cream",
		weight = 1000,
		stack = true,
		close = true,
		description = "Whipped Cream",
		client = {
			image = "pcream.png",
		}
	},

	["psparklingwine"] = {
		label = "Sparkling Wine",
		weight = 1000,
		stack = true,
		close = true,
		description = "Sparkling Wine",
		client = {
			image = "psparklingwine.png",
		}
	},

	["iphone"] = {
		label = "iPhone",
		weight = 1000,
		stack = true,
		close = true,
		description = "Very expensive phone",
		client = {
			image = "iphone.png",
		}
	},

	["crayons"] = {
		label = "Crayons",
		weight = 100,
		stack = true,
		close = true,
		description = "A small set of pastel coloured crayons, used to decorate illustrations. Stay within the lines!",
		client = {
			image = "crayons.png",
		}
	},

	["photo"] = {
		label = "Saved Pic",
		weight = 500,
		stack = false,
		close = true,
		description = "Brand new picture saved!",
		client = {
			image = "photo.png",
		}
	},

	["metaltrash"] = {
		label = "Metal Trash",
		weight = 200,
		stack = true,
		close = false,
		description = "Trashed Metal",
		client = {
			image = "metaltrash.png",
		}
	},

	["hb-chicken-sandwich"] = {
		label = "Chicken Sandwich",
		weight = 125,
		stack = true,
		close = true,
		description = "Why it look like a burger tho?",
		client = {
			image = "hb-chicken-sandwich.png",
		}
	},

	["hb-eggs"] = {
		label = "Eggs",
		weight = 150,
		stack = true,
		close = true,
		description = "Ingredient",
		client = {
			image = "hb-eggs.png",
		}
	},

	["woodwedge"] = {
		label = "Log Wedge",
		weight = 350,
		stack = true,
		close = false,
		description = "A wedge of a tree log, freshly cut and smelling like the forest.",
		client = {
			image = "woodwedge.png",
		}
	},

	["firework1"] = {
		label = "2Brothers",
		weight = 1000,
		stack = true,
		close = true,
		description = "Fireworks",
		client = {
			image = "firework1.png",
		}
	},

	["tq_tequila"] = {
		label = "Tequila",
		weight = 50,
		stack = true,
		close = false,
		description = "",
		client = {
			image = "tq_tequila.png",
		}
	},

	["pcoldbrewlatte"] = {
		label = "Cold Brew Latte",
		weight = 1000,
		stack = true,
		close = true,
		description = "Cold Brew Latte",
		client = {
			image = "pcoldbrewlatte.png",
		}
	},

	["keepcompanionshepherd"] = {
		label = "Shepherd",
		weight = 500,
		stack = false,
		close = true,
		description = "Shepherd is your royal companion!",
		client = {
			image = "A_C_shepherd.png",
		}
	},

	["casino_sandwitch"] = {
		label = "Casino Sandwitch",
		weight = 0,
		stack = false,
		close = false,
		description = "Casino Sandwitch",
		client = {
			image = "casino_sandwitch.png",
		}
	},

	["hotdogbun"] = {
		label = "Hot Dog Bun",
		weight = 100,
		stack = true,
		close = true,
		description = "",
		client = {
			image = "hotdogbun.png",
		}
	},

	["marvelcocktail"] = {
		label = "Marvel Cocktail",
		weight = 250,
		stack = true,
		close = true,
		description = "Cyber Bar Is The Best.",
		client = {
			image = "marvelcocktail.png",
		}
	},

	["tosti"] = {
		label = "Grilled Cheese Sandwich",
		weight = 200,
		stack = true,
		close = true,
		description = "Nice to eat",
		client = {
			image = "tosti.png",
		}
	},

	["red_xtc2"] = {
		label = "Dual Stack Red XTC",
		weight = 100,
		stack = true,
		close = true,
		description = "",
		client = {
			image = "unstampedred.png",
		}
	},

	["weed_amnesia_seed"] = {
		label = "Amnesia Seed",
		weight = 0,
		stack = true,
		close = true,
		description = "A weed seed of Amnesia",
		client = {
			image = "weed_seed.png",
		}
	},

	["pbeermugfull"] = {
		label = "Beer Mug",
		weight = 1000,
		stack = true,
		close = true,
		description = "Beer Mug",
		client = {
			image = "pbeermugfull.png",
		}
	},

	["smileyfacesheet"] = {
		label = "Smiley Face Sheet",
		weight = 100,
		stack = true,
		close = true,
		description = "",
		client = {
			image = "smileysheet.png",
		}
	},

	["cocainekey"] = {
		label = "Key B",
		weight = 200,
		stack = true,
		close = false,
		description = "Random Key, with a \"Razorblade\" Engraved on the Back...",
		client = {
			image = "keyb.png",
		}
	},

	["snapper"] = {
		label = "Snapper",
		weight = 150,
		stack = false,
		close = true,
		description = "",
		client = {
			image = "snapper.png",
		}
	},

	["wahoo"] = {
		label = "Wahoo",
		weight = 150,
		stack = false,
		close = true,
		description = "",
		client = {
			image = "wahoo.png",
		}
	},

	["irishpub_tequila"] = {
		label = "Tequila",
		weight = 50,
		stack = true,
		close = false,
		description = "",
		client = {
			image = "irishpub_tequila.png",
		}
	},

	["carrim"] = {
		label = "Sports Rim",
		weight = 850,
		stack = true,
		close = true,
		description = "A chrome rim alloy.",
		client = {
			image = "carrim.png",
		}
	},

	["gt-coffee_beans"] = {
		label = "Coffee Beans",
		weight = 100,
		stack = true,
		close = true,
		description = "Might be used to make something",
		client = {
			image = "gt-coffeebeans.png",
		}
	},

	["cannabis"] = {
		label = "Cannabis",
		weight = 2500,
		stack = true,
		close = true,
		description = "Uncured cannabis",
		client = {
			image = "cannabis.png",
		}
	},

	["walkstick"] = {
		label = "Walking Stick",
		weight = 1000,
		stack = true,
		close = true,
		description = "Walking stick for ya'll grannies out there.. HAHA",
		client = {
			image = "walkstick.png",
		}
	},

	["irishpub_coffee"] = {
		label = "Coffee",
		weight = 50,
		stack = true,
		close = false,
		description = "",
		client = {
			image = "irishpub_coffee.png",
		}
	},

	["hb-eggs-benedict"] = {
		label = "Eggs Benedict",
		weight = 250,
		stack = true,
		close = true,
		description = "Eggs Benedict",
		client = {
			image = "hb-eggs-benedict.png",
		}
	},

	["teddy"] = {
		label = "Teddy bear",
		weight = 150,
		stack = true,
		close = true,
		description = "A teddy bear that appears to be unwanted, still has the tag on it and everything.",
		client = {
			image = "teddy.png",
		}
	},

	["bento"] = {
		label = "Bento Box",
		weight = 500,
		stack = true,
		close = true,
		description = "",
		client = {
			status = {
				hunger = 45,
			},
			image = "bento.png",
		}
	},

	["croasant-chocolate"] = {
		label = "Cholate Croisant",
		weight = 1000,
		stack = true,
		close = true,
		description = "",
		client = {
			image = "croasant.png",
		}
	},

	["mahimahi"] = {
		label = "Mahi-Mahi",
		weight = 150,
		stack = false,
		close = true,
		description = "",
		client = {
			image = "mahimahi.png",
		}
	},

	["pcaramelfrappucino"] = {
		label = "Caramel Frappucino",
		weight = 1000,
		stack = true,
		close = true,
		description = "Caramel Frappucino",
		client = {
			image = "pcaramelfrappucino.png",
		}
	},

	["gratefuldeadsheet"] = {
		label = "Grateful Dead Sheet",
		weight = 100,
		stack = true,
		close = true,
		description = "",
		client = {
			image = "gratefuldeadsheet.png",
		}
	},

	["exoticfish"] = {
		label = "Exotic Fish",
		weight = 1585,
		stack = false,
		close = true,
		description = "Looks like i should throw this one back, might get me in trouble..",
		client = {
			image = "exoticfish.png",
		}
	},

	["highnoon"] = {
		label = "Highnoon",
		weight = 100,
		stack = true,
		close = true,
		description = "",
		client = {
			status = {
				thirst = 20,
			},
			image = "highnoon.png",
		}
	},

	["grapejuice"] = {
		label = "Grape Juice",
		weight = 200,
		stack = true,
		close = false,
		description = "Grape juice is said to be healthy",
		client = {
			image = "grapejuice.png",
		}
	},

	["heroin_ready"] = {
		label = "Syringe Of Heroin",
		weight = 250,
		stack = true,
		close = false,
		description = "",
		client = {
			image = "heroin_ready.png",
		}
	},

	["keepcompanionmtlion2"] = {
		label = "Panter",
		weight = 500,
		stack = false,
		close = true,
		description = "Panter is your royal companion!",
		client = {
			image = "A_C_MtLion.png",
		}
	},

	["headbag"] = {
		label = "Head Bag",
		weight = 500,
		stack = false,
		close = true,
		description = "A bag to cover someones head",
		client = {
			image = "headbag.png",
		}
	},

	["laptop"] = {
		label = "Laptop",
		weight = 4000,
		stack = true,
		close = true,
		description = "Expensive laptop",
		client = {
			image = "laptop.png",
		}
	},

	["newspaper"] = {
		label = "Newspaper",
		weight = 10,
		stack = true,
		close = true,
		description = "Los Santos Newspaper",
		client = {
			image = "newspaper.png",
		}
	},

	["fuelcap"] = {
		label = "Fuel Cap",
		weight = 160,
		stack = true,
		close = true,
		description = "Used to keep the fuel in the tank, could use a spare couple of these...",
		client = {
			image = "fuelcap.png",
		}
	},

	["meat"] = {
		label = "Meat",
		weight = 0,
		stack = true,
		close = true,
		description = "A slice of meat.",
		client = {
			image = "meat.png",
		}
	},

	["stickynote"] = {
		label = "Sticky note",
		weight = 0,
		stack = false,
		close = false,
		description = "Sometimes handy to remember something :)",
		client = {
			image = "stickynote.png",
		}
	},

	["red_trolls2"] = {
		label = "Dual Stack red trolls",
		weight = 100,
		stack = true,
		close = true,
		description = "",
		client = {
			image = "troll_red.png",
		}
	},

	["smiley_tabs"] = {
		label = "Smiley tabs",
		weight = 100,
		stack = true,
		close = true,
		description = "",
		client = {
			image = "smiley_tabs.png",
		}
	},

	["armor"] = {
		label = "Armor",
		weight = 5000,
		stack = true,
		close = true,
		description = "Some protection won't hurt... right?",
		client = {
			image = "armor.png",
		}
	},

	["chewinggum"] = {
		label = "Old pack of gum",
		weight = 120,
		stack = true,
		close = true,
		description = "An old looking pack of chewing gum... Wouldn't trust it...",
		client = {
			image = "chewinggum.png",
		}
	},

	["xanax"] = {
		label = "Xanax",
		weight = 100,
		stack = true,
		close = true,
		description = "",
		client = {
			image = "xanax.png",
		}
	},

	["mackerel"] = {
		label = "Mackerel",
		weight = 2500,
		stack = false,
		close = false,
		description = "Mackerel",
		client = {
			image = "mackerel.png",
		}
	},

	["irishpub_coconut_drink"] = {
		label = "Coconut Drink",
		weight = 50,
		stack = true,
		close = false,
		description = "",
		client = {
			image = "irishpub_coconut_drink.png",
		}
	},

	["red_cats"] = {
		label = "Single Stack red cats",
		weight = 100,
		stack = true,
		close = true,
		description = "",
		client = {
			image = "kitty_red.png",
		}
	},

	["thicklog"] = {
		label = "Thick Pine Log",
		weight = 1550,
		stack = true,
		close = false,
		description = "A thick, dense log of pine.",
		client = {
			image = "thicklog.png",
		}
	},

	["pocketwatch"] = {
		label = "Pocket Watch",
		weight = 200,
		stack = true,
		close = true,
		description = "A pocket watch",
		client = {
			image = "pocketwatch.png",
		}
	},

	["ruby_earring_silver2"] = {
		label = "Old Wet Ruby Earrings Silver",
		weight = 200,
		stack = true,
		close = false,
		description = "This was found fishing, fair and square!",
		client = {
			image = "ruby_earring_silver.png",
		}
	},

	["gt-cheese"] = {
		label = "Cheese",
		weight = 100,
		stack = true,
		close = true,
		description = "Might be used to make something",
		client = {
			image = "gt-cheese.png",
		}
	},

	["mining_goldnugget"] = {
		label = "Golden Nugget",
		weight = 500,
		stack = true,
		close = true,
		description = "Golden nugget from mining",
		client = {
			image = "mining_goldnugget.png",
		}
	},

	["pmozzarella"] = {
		label = "Fresh Mozzarella",
		weight = 1000,
		stack = true,
		close = true,
		description = "Fresh Mozzarella",
		client = {
			image = "pmozzarella.png",
		}
	},

	["hb-bread"] = {
		label = "Bread",
		weight = 125,
		stack = true,
		close = true,
		description = "Ingredient",
		client = {
			image = "hb-bread.png",
		}
	},

	["tq_strawberry_juice"] = {
		label = "Strawberry Juice",
		weight = 50,
		stack = true,
		close = false,
		description = "",
		client = {
			image = "tq_strawberry_juice.png",
		}
	},

	["blue_playboys2"] = {
		label = "Dual Stack blue Playboys",
		weight = 100,
		stack = true,
		close = true,
		description = "",
		client = {
			image = "playboy_blue.png",
		}
	},

	["pmochi"] = {
		label = "Pink Mochi",
		weight = 100,
		stack = true,
		close = true,
		description = "",
		client = {
			status = {
				hunger = 48,
			},
			image = "mochipink.png",
		}
	},

	["burger-coupon25"] = {
		label = "Burgershot Coupon 25% Off",
		weight = 15,
		stack = true,
		close = false,
		description = "25% Off Coupon ",
		client = {
			image = "bs_coupon-25.png",
		}
	},

	["pbeermug"] = {
		label = "Beer Empty Mug",
		weight = 1000,
		stack = true,
		close = true,
		description = "Beer Empty Mug",
		client = {
			image = "pbeermug.png",
		}
	},

	["filled_evidence_bag"] = {
		label = "Evidence Bag",
		weight = 200,
		stack = false,
		close = false,
		description = "A filled evidence bag to see who committed the crime >:(",
		client = {
			image = "evidence.png",
		}
	},

	["shrooms"] = {
		label = "Shrooms",
		weight = 250,
		stack = true,
		close = false,
		description = "",
		client = {
			image = "shrooms.png",
		}
	},

	["sharktiger"] = {
		label = "Shark",
		weight = 5000,
		stack = false,
		close = false,
		description = "Tigershark",
		client = {
			image = "sharktiger.png",
		}
	},

	["bmochi"] = {
		label = "Blue Mochi",
		weight = 100,
		stack = true,
		close = true,
		description = "",
		client = {
			status = {
				hunger = 41,
			},
			image = "mochiblue.png",
		}
	},

	["lighter"] = {
		label = "Lighter",
		weight = 0,
		stack = true,
		close = true,
		description = "On new years eve a nice fire to stand next to",
		client = {
			image = "lighter.png",
		}
	},

	["psalt"] = {
		label = "Salt",
		weight = 1000,
		stack = true,
		close = true,
		description = "Salt",
		client = {
			image = "psalt.png",
		}
	},

	["sunglasses"] = {
		label = "Sunnies",
		weight = 100,
		stack = true,
		close = true,
		description = "A pair of what look like expenssive UV spec, designer shades - except they say Gouccy?",
		client = {
			image = "sunglasses.png",
		}
	},

	["firstaidforpet"] = {
		label = "First aid for pet",
		weight = 500,
		stack = true,
		close = true,
		description = "Revive your pet!",
		client = {
			image = "firstaidforpet.png",
		}
	},

	["gmochi"] = {
		label = "Green Mochi",
		weight = 100,
		stack = true,
		close = true,
		description = "",
		client = {
			status = {
				hunger = 48,
			},
			image = "mochigreen.png",
		}
	},

	["cupcake-morango"] = {
		label = "Straberry Cupcake",
		weight = 1000,
		stack = true,
		close = true,
		description = "",
		client = {
			image = "cupmorango.png",
		}
	},

	["yellowpurch"] = {
		label = "Yellow Purch",
		weight = 150,
		stack = false,
		close = true,
		description = "",
		client = {
			image = "yellowpurch.png",
		}
	},

	["tq_orange_juice"] = {
		label = "Orange Juice",
		weight = 50,
		stack = true,
		close = false,
		description = "",
		client = {
			image = "tq_orange_juice.png",
		}
	},

	["handcuffs"] = {
		label = "Handcuffs",
		weight = 100,
		stack = true,
		close = true,
		description = "Comes in handy when people misbehave. Maybe it can be used for something else?",
		client = {
			image = "handcuffs.png",
		}
	},

	["firework4"] = {
		label = "Weeping Willow",
		weight = 1000,
		stack = true,
		close = true,
		description = "Fireworks",
		client = {
			image = "firework4.png",
		}
	},

	["crappie"] = {
		label = "Crappie",
		weight = 150,
		stack = false,
		close = true,
		description = "",
		client = {
			image = "crappie.png",
		}
	},

	["bubblegum_gumball"] = {
		label = "BubbleGum GumBall",
		weight = 50,
		stack = true,
		close = true,
		description = "A BubbleGum GumBall from the local Store!",
		client = {
			image = "bubblegum_gumball.png",
		}
	},

	["midlog"] = {
		label = "Medium Pine Log",
		weight = 1200,
		stack = true,
		close = false,
		description = "A medium weighted log of pine.",
		client = {
			image = "midlog.png",
		}
	},

	["thinlog"] = {
		label = "Thin Pine Log",
		weight = 700,
		stack = true,
		close = false,
		description = "A freshly cut thin log of pine.",
		client = {
			image = "thinlog.png",
		}
	},

	["porange"] = {
		label = "Orange",
		weight = 1000,
		stack = true,
		close = true,
		description = "Orange",
		client = {
			image = "porange.png",
		}
	},

	["gt-tortilla_chips"] = {
		label = "Tortilla Chips",
		weight = 100,
		stack = true,
		close = true,
		description = "Might be used to make something",
		client = {
			image = "gt-tortillachips.png",
		}
	},

	["pdusche"] = {
		label = "Dusche Beer",
		weight = 1000,
		stack = true,
		close = true,
		description = "Dusche Beer",
		client = {
			image = "pdusche.png",
		}
	},

	["blue_pl4"] = {
		label = "Quad Stack blue pl",
		weight = 100,
		stack = true,
		close = true,
		description = "",
		client = {
			image = "PL_blue.png",
		}
	},

	["omochi"] = {
		label = "Orange Mochi",
		weight = 100,
		stack = true,
		close = true,
		description = "",
		client = {
			status = {
				hunger = 49,
			},
			image = "mochiorange.png",
		}
	},

	["pbigdough"] = {
		label = "Pizza Dough",
		weight = 1000,
		stack = true,
		close = true,
		description = "Pizza Dough",
		client = {
			image = "pbigdough.png",
		}
	},

	["hb-cherrys"] = {
		label = "Cherrys",
		weight = 150,
		stack = true,
		close = true,
		description = "Ingredient",
		client = {
			image = "hb-cherrys.png",
		}
	},

	["pwhitewine"] = {
		label = "White Wine",
		weight = 1000,
		stack = true,
		close = true,
		description = "White Wine",
		client = {
			image = "pwhitewine.png",
		}
	},

	["tq_strawberry"] = {
		label = "Strawberry",
		weight = 50,
		stack = true,
		close = false,
		description = "",
		client = {
			image = "tq_strawberry.png",
		}
	},

	["blue_pl2"] = {
		label = "Dual Stack blue pl",
		weight = 100,
		stack = true,
		close = true,
		description = "",
		client = {
			image = "PL_blue.png",
		}
	},

	["loosecokestagetwo"] = {
		label = "More Pure Loose Coke",
		weight = 100,
		stack = true,
		close = true,
		description = "",
		client = {
			image = "loosecokestagetwo.png",
		}
	},

	["ironoxide"] = {
		label = "Iron Powder",
		weight = 100,
		stack = true,
		close = false,
		description = "Some powder to mix with.",
		client = {
			image = "ironoxide.png",
		}
	},

	["glass"] = {
		label = "Glass",
		weight = 100,
		stack = true,
		close = false,
		description = "It is very fragile, watch out",
		client = {
			image = "glass.png",
		}
	},

	["actiontoy"] = {
		label = "Action figure",
		weight = 350,
		stack = true,
		close = false,
		description = "An old toy, looks kinda neat - might be valuable?",
		client = {
			image = "actionfigure.png",
		}
	},

	["tq_cocktail"] = {
		label = "Cocktail",
		weight = 50,
		stack = true,
		close = false,
		description = "",
		client = {
			image = "tq_cocktail.png",
		}
	},

	["ppinkwinebottle"] = {
		label = "Pink Wine Bottle",
		weight = 1000,
		stack = true,
		close = true,
		description = "Pink Wine Bottle",
		client = {
			image = "ppinkwinebottle.png",
		}
	},

	["sulfuric_acid"] = {
		label = "Sulfuric Acid",
		weight = 1500,
		stack = true,
		close = false,
		description = "Chemicals, handle with care!",
		client = {
			image = "sulfuric_acid.png",
		}
	},

	["fly"] = {
		label = "Pilots License",
		weight = 0,
		stack = false,
		close = false,
		description = "A Pilots permit to show you can fly a plane as long as you have a passenger with a valid Pilots License",
		client = {
			image = "id_card.png",
		}
	},

	["red_aliens4"] = {
		label = "Quad Stack red aliens",
		weight = 100,
		stack = true,
		close = true,
		description = "",
		client = {
			image = "alien_red.png",
		}
	},

	["hb-carbonated-water"] = {
		label = "Carbonated Water",
		weight = 100,
		stack = true,
		close = true,
		description = "Ingredient",
		client = {
			image = "hb-carbonated-water.png",
		}
	},

	["bean-cola"] = {
		label = "Coke",
		weight = 1000,
		stack = true,
		close = true,
		description = "",
		client = {
			image = "cola.png",
		}
	},

	["steak"] = {
		label = "Steak",
		weight = 100,
		stack = true,
		close = true,
		description = "",
		client = {
			image = "steak.png",
		}
	},

	["psprite"] = {
		label = "Sprite",
		weight = 1000,
		stack = true,
		close = true,
		description = "Sprite",
		client = {
			image = "psprite.png",
		}
	},

	["meth"] = {
		label = "Meth",
		weight = 500,
		stack = true,
		close = false,
		description = "Really addictive stimulant...",
		client = {
			image = "meth.png",
		}
	},

	["funkopop_snape"] = {
		label = "Severus Snape Funkopop",
		weight = 0,
		stack = true,
		close = false,
		description = "Severus Snape Funkopop Toy",
		client = {
			image = "funkopop_snape.png",
		}
	},

	["kerosene"] = {
		label = "kerosene",
		weight = 0,
		stack = false,
		close = false,
		description = "oil",
		client = {
			image = "kerosene.png",
		}
	},

	["heroin_readystagetwo"] = {
		label = "Syringe Of Better Heroin",
		weight = 250,
		stack = true,
		close = false,
		description = "",
		client = {
			image = "heroin_readystagetwo.png",
		}
	},

	["carbattery"] = {
		label = "Car Battery",
		weight = 800,
		stack = true,
		close = true,
		description = "A battery used to power motor vehicles. Not sure if this has any charge left.",
		client = {
			image = "carbattery.png",
		}
	},

	["redtailcatfish"] = {
		label = "Redtail Catfish",
		weight = 150,
		stack = false,
		close = true,
		description = "",
		client = {
			image = "redtailcatfish.png",
		}
	},

	["red_pl3"] = {
		label = "Triple Stack red pl",
		weight = 100,
		stack = true,
		close = true,
		description = "",
		client = {
			image = "PL_red.png",
		}
	},

	["orange_cats"] = {
		label = "Single Stack orange cats",
		weight = 100,
		stack = true,
		close = true,
		description = "",
		client = {
			image = "kitty_orange.png",
		}
	},

	["bean-cha"] = {
		label = "Tea",
		weight = 1000,
		stack = true,
		close = true,
		description = "",
		client = {
			image = "tea.png",
		}
	},

	["tq_chocolatecup"] = {
		label = "chocolatecup",
		weight = 50,
		stack = true,
		close = false,
		description = "",
		client = {
			image = "tq_chocolatecup.png",
		}
	},

	["irishpub_coconut"] = {
		label = "Coconut",
		weight = 50,
		stack = true,
		close = false,
		description = "",
		client = {
			image = "irishpub_coconut.png",
		}
	},

	["silverearring2"] = {
		label = "Old Wet Silver Earrings",
		weight = 200,
		stack = true,
		close = false,
		description = "This was found fishing, fair and square!",
		client = {
			image = "silver_earring.png",
		}
	},

	["noodles"] = {
		label = "Instant Noodles",
		weight = 100,
		stack = true,
		close = true,
		description = "",
		client = {
			image = "noodles.png",
		}
	},

	["carwipers"] = {
		label = "Windsheild Wipers",
		weight = 250,
		stack = true,
		close = true,
		description = "Looks like these wipers can still be used, not bad.",
		client = {
			image = "windshieldwipers.png",
		}
	},

	["heroincutstagethree"] = {
		label = "Best Cut Heroin",
		weight = 250,
		stack = true,
		close = false,
		description = "",
		client = {
			image = "heroinpowderstagetwo.png",
		}
	},

	["tree_bark"] = {
		label = "Tree Bark",
		weight = 50,
		stack = true,
		close = true,
		description = "",
		client = {
			image = "treebark.png",
		}
	},

	["woodenpallet"] = {
		label = "Wooden Pallet",
		weight = 1000,
		stack = true,
		close = false,
		description = "A sturdy pallet used in storage facilities in order for forklifts to move goods around a warehouse.",
		client = {
			image = "woodenpallet.png",
		}
	},

	["orange_aliens2"] = {
		label = "Dual Stack orange aliens",
		weight = 100,
		stack = true,
		close = true,
		description = "",
		client = {
			image = "alien_orange.png",
		}
	},

	["hb-sausage"] = {
		label = "Sausage",
		weight = 150,
		stack = true,
		close = true,
		description = "Ingredient",
		client = {
			image = "hb-sausage.png",
		}
	},

	["collarpet"] = {
		label = "Pet collar",
		weight = 500,
		stack = true,
		close = true,
		description = "Rename your pets!",
		client = {
			image = "collarpet.png",
		}
	},

	["wine"] = {
		label = "Wine",
		weight = 300,
		stack = true,
		close = false,
		description = "Some good wine to drink on a fine evening",
		client = {
			image = "wine.png",
		}
	},

	["slushy"] = {
		label = "Slushy",
		weight = 750,
		stack = false,
		close = true,
		description = "A nice cold drink in the coldest place in San Andreas",
		client = {
			image = "slushy.png",
		}
	},

	["lsd_vial_four"] = {
		label = "Really Good LSD",
		weight = 100,
		stack = true,
		close = true,
		description = "",
		client = {
			image = "lsd_vial_four.png",
		}
	},

	["10kgoldchain"] = {
		label = "10k Gold Chain",
		weight = 2000,
		stack = true,
		close = true,
		description = "10 carat golden chain",
		client = {
			image = "10kgoldchain.png",
		}
	},

	["wheelchair"] = {
		label = "wheelchair",
		weight = 500,
		stack = false,
		close = true,
		description = "Crip Gang",
		client = {
			image = "wheelchair.png",
		}
	},

	["woodenplanks"] = {
		label = "Wooden Planks",
		weight = 1100,
		stack = true,
		close = false,
		description = "A bundle of 4x2 wooden planks with a variety of residential and commercial purposes.",
		client = {
			image = "woodenplanks.png",
		}
	},

	["irishpub_kiwi_juice"] = {
		label = "Kiwi Juice",
		weight = 50,
		stack = true,
		close = false,
		description = "",
		client = {
			image = "irishpub_kiwi_juice.png",
		}
	},

	["funkopop_harrypotter"] = {
		label = "Harry Potter Funkopop",
		weight = 0,
		stack = true,
		close = false,
		description = "Harry Potter Funkopop Toy",
		client = {
			image = "funkopop_harrypotter.png",
		}
	},

	["poppyresin"] = {
		label = "Poppy resin",
		weight = 2000,
		stack = true,
		close = false,
		description = "It sticks to your fingers when you handle it.",
		client = {
			image = "poppyresin.png",
		}
	},

	["superdonut"] = {
		label = "Slucky Bucky Donut",
		weight = 200,
		stack = true,
		close = true,
		description = "A Donut filled with Juices!",
		client = {
			image = "superdonut.png",
		}
	},

	["blue_trolls2"] = {
		label = "Dual Stack blue trolls",
		weight = 100,
		stack = true,
		close = true,
		description = "",
		client = {
			image = "troll_blue.png",
		}
	},

	["funkopop_hedwig"] = {
		label = "Hedwig Funkopop",
		weight = 0,
		stack = true,
		close = false,
		description = "Hedwig Funkopop Toy",
		client = {
			image = "funkopop_hedwig.png",
		}
	},

	["orange_playboys3"] = {
		label = "Triple Stack orange Playboys",
		weight = 100,
		stack = true,
		close = true,
		description = "",
		client = {
			image = "playboy_orange.png",
		}
	},

	["torpedo"] = {
		label = "Torpedo",
		weight = 200,
		stack = true,
		close = true,
		description = "BurgerShot Torpedo",
		client = {
			status = {
				hunger = 43,
			},
			image = "burger-torpedo.png",
		}
	},

	["red_trolls3"] = {
		label = "Tritrollse Stack red trolls",
		weight = 100,
		stack = true,
		close = true,
		description = "",
		client = {
			image = "troll_red.png",
		}
	},

	["mining_goldbar"] = {
		label = "Gold Bar",
		weight = 500,
		stack = true,
		close = true,
		description = "Gold Bar",
		client = {
			image = "mining_goldbar.png",
		}
	},

	["vicodin_prescription"] = {
		label = "Vicodin Prescription",
		weight = 250,
		stack = true,
		close = false,
		description = "",
		client = {
			image = "vicodinprescription.png",
		}
	},

	["grape"] = {
		label = "Grape",
		weight = 100,
		stack = true,
		close = false,
		description = "Mmmmh yummie, grapes",
		client = {
			image = "grape.png",
		}
	},

	["dirtymoney"] = {
		label = "Dirty Money",
		weight = 0,
		stack = true,
		close = false,
		description = "The ill-gotten proceeds of criminal activity.",
		client = {
			image = "dirtymoney.png",
		}
	},

	["quadpress"] = {
		label = "Quad Pill Press",
		weight = 100,
		stack = true,
		close = true,
		description = "",
		client = {
			image = "pillpress.png",
		}
	},

	["hb-cherry-float"] = {
		label = "Cherry Float",
		weight = 150,
		stack = true,
		close = true,
		description = "Love you with a cherry on top",
		client = {
			image = "hb-cherry-float.png",
		}
	},

	["orangeslushy"] = {
		label = "Orange Slushy",
		weight = 750,
		stack = false,
		close = true,
		description = "Damn a Slushy...",
		client = {
			image = "orangeslushy.png",
		}
	},

	["petwaterbottleportable"] = {
		label = "Portable water bottle",
		weight = 1000,
		stack = false,
		close = true,
		description = "Flask to store water for your pets",
		client = {
			image = "petwaterbottleportable.png",
		}
	},

	["gt-quesadilla"] = {
		label = "Quesadilla",
		weight = 100,
		stack = true,
		close = true,
		description = "Gunnar really makes some damn good Quesadillas huh?",
		client = {
			image = "gt-quesadilla.png",
		}
	},

	["gt-soda"] = {
		label = "Soda",
		weight = 100,
		stack = true,
		close = true,
		description = "The Sodas good huh?",
		client = {
			image = "gt-soda.png",
		}
	},

	["pwhiskeybottle"] = {
		label = "Whiskey Bottle",
		weight = 1000,
		stack = true,
		close = true,
		description = "Whiskey Bottle",
		client = {
			image = "pwhiskeybottle.png",
		}
	},

	["mining_copperbar"] = {
		label = "Copper Bar",
		weight = 500,
		stack = true,
		close = true,
		description = "Copper Bar",
		client = {
			image = "mining_copperbar.png",
		}
	},

	["irishpub_orange"] = {
		label = "Orange",
		weight = 50,
		stack = true,
		close = false,
		description = "",
		client = {
			image = "irishpub_orange.png",
		}
	},

	["prescription_pad"] = {
		label = "Prescription Pad",
		weight = 10,
		stack = false,
		close = false,
		description = "",
		client = {
			image = "prescriptionpad.png",
		}
	},

	["orange_pl"] = {
		label = "Single Stack orange pl",
		weight = 100,
		stack = true,
		close = true,
		description = "",
		client = {
			image = "PL_orange.png",
		}
	},

	["scarcolada"] = {
		label = "Scarface Colada",
		weight = 250,
		stack = true,
		close = true,
		description = "Cyber Bar Is The Best.",
		client = {
			image = "scarcolada.png",
		}
	},

	["keepcompanionrottweiler"] = {
		label = "Rottweiler",
		weight = 500,
		stack = false,
		close = true,
		description = "Rottweiler is your royal companion!",
		client = {
			image = "A_Rottweiler.png",
		}
	},

	["burger-fries"] = {
		label = "Fries",
		weight = 125,
		stack = true,
		close = true,
		description = "Sates Hunger.",
		client = {
			image = "bs_fries.png",
		}
	},

	["dirtyheroinlabkit"] = {
		label = "Dirty heroin Lab Kit",
		weight = 250,
		stack = true,
		close = false,
		description = "",
		client = {
			image = "labkit_dirty.png",
		}
	},

	["gt-enchilada"] = {
		label = "Enchilada",
		weight = 100,
		stack = true,
		close = true,
		description = "Gunnar really makes some damn good Enchiladas huh?",
		client = {
			image = "gt-enchilada.png",
		}
	},

	["vanillaicecream"] = {
		label = "Vanilla Ice Cream",
		weight = 350,
		stack = true,
		close = true,
		description = "A bowl filled with Vanilla Ice Cream!",
		client = {
			image = "vanillaicecream.png",
		}
	},

	["carradio"] = {
		label = "Car Radio",
		weight = 550,
		stack = true,
		close = true,
		description = "A radio equipped to play through changes in radio signals.",
		client = {
			image = "carradio.png",
		}
	},

	["orange_trolls2"] = {
		label = "Dual Stack orange trolls",
		weight = 100,
		stack = true,
		close = true,
		description = "",
		client = {
			image = "troll_orange.png",
		}
	},

	["tq_green_dream"] = {
		label = "Green Dream",
		weight = 50,
		stack = true,
		close = false,
		description = "",
		client = {
			image = "tq_green_dream.png",
		}
	},

	["weed_og-kush_seed"] = {
		label = "OGKush Seed",
		weight = 0,
		stack = true,
		close = true,
		description = "A weed seed of OG Kush",
		client = {
			image = "weed_seed.png",
		}
	},

	["pmushroomspizza"] = {
		label = "Mushrooms Pizza",
		weight = 1000,
		stack = true,
		close = true,
		description = "Mushrooms Pizza",
		client = {
			image = "pmushroomspizza.png",
		}
	},

	["burger-meat"] = {
		label = "Cooked Patty",
		weight = 125,
		stack = true,
		close = true,
		description = "An Ingredient",
		client = {
			image = "bs_patty.png",
		}
	},

	["gt-chicken_taco"] = {
		label = "Chicken Taco",
		weight = 100,
		stack = true,
		close = true,
		description = "Gunnar really makes some damn good Chicken Tacos huh?",
		client = {
			image = "gt-chickentaco.png",
		}
	},

	["red_xtc4"] = {
		label = "Quad Stack Red XTC",
		weight = 100,
		stack = true,
		close = true,
		description = "",
		client = {
			image = "unstampedred.png",
		}
	},

	["fishingkey"] = {
		label = "Corroded Key",
		weight = 100,
		stack = true,
		close = true,
		description = "A weathered key that looks usefull",
		client = {
			image = "fishingkey.png",
		}
	},

	["gt-ground_beef"] = {
		label = "Ground Beef",
		weight = 100,
		stack = true,
		close = true,
		description = "Might be used to make something",
		client = {
			image = "gt-groundbeef.png",
		}
	},

	["adderal_prescription"] = {
		label = "Adderal Prescription",
		weight = 250,
		stack = true,
		close = false,
		description = "",
		client = {
			image = "adderalprescription.png",
		}
	},

	["blue_cats4"] = {
		label = "Quad Stack blue cats",
		weight = 100,
		stack = true,
		close = true,
		description = "",
		client = {
			image = "kitty_blue.png",
		}
	},

	["white_trolls3"] = {
		label = "Tritrollse Stack White trolls",
		weight = 100,
		stack = true,
		close = true,
		description = "",
		client = {
			image = "troll_white.png",
		}
	},

	["shotfries"] = {
		label = "Shot Fries",
		weight = 200,
		stack = true,
		close = true,
		description = "Shot Fries",
		client = {
			status = {
				hunger = 41,
			},
			image = "burger-fries.png",
		}
	},

	["bleeder"] = {
		label = "The Bleeder",
		weight = 200,
		stack = true,
		close = true,
		description = "The Bleeder",
		client = {
			status = {
				hunger = 46,
			},
			image = "burger-bleeder.png",
		}
	},

	["white_pl3"] = {
		label = "Triple Stack White pl",
		weight = 100,
		stack = true,
		close = true,
		description = "",
		client = {
			image = "PL_white.png",
		}
	},

	["hb-wraps"] = {
		label = "Wraps",
		weight = 100,
		stack = true,
		close = true,
		description = "Ingredient",
		client = {
			image = "hb-wraps.png",
		}
	},

	["red_playboys3"] = {
		label = "Triple Stack red Playboys",
		weight = 100,
		stack = true,
		close = true,
		description = "",
		client = {
			image = "playboy_red.png",
		}
	},

	["gunkaccino"] = {
		label = "The Gunkaccino",
		weight = 100,
		stack = true,
		close = true,
		description = "",
		client = {
			status = {
				thirst = 26,
			},
			image = "gunkaccino.png",
		}
	},

	["petgroomingkit"] = {
		label = "Pet Grooming Kit",
		weight = 1000,
		stack = false,
		close = true,
		description = "Pet Grooming Kit",
		client = {
			image = "petgroomingkit.png",
		}
	},

	["red_playboys4"] = {
		label = "Quad Stack red Playboys",
		weight = 100,
		stack = true,
		close = true,
		description = "",
		client = {
			image = "playboy_red.png",
		}
	},

	["shotnuggets"] = {
		label = "Shot Nuggets",
		weight = 200,
		stack = true,
		close = true,
		description = "Burgershot Nuggets",
		client = {
			status = {
				hunger = 40,
			},
			image = "burger-shotnuggets.png",
		}
	},

	["hb-breakfast"] = {
		label = "Breakfast Plate",
		weight = 250,
		stack = true,
		close = true,
		description = "Freshly Made Eggs",
		client = {
			image = "hb-breakfast.png",
		}
	},

	["sugar"] = {
		label = "Sugar",
		weight = 100,
		stack = true,
		close = true,
		description = "",
		client = {
			status = {
				hunger = 50,
			},
			image = "sugar.png",
		}
	},

	["mining_copperfragment"] = {
		label = "Copper Fragment",
		weight = 500,
		stack = true,
		close = true,
		description = "Copper fragment from mining",
		client = {
			image = "mining_copperfragment.png",
		}
	},

	["meatdeer"] = {
		label = "Deer Horns",
		weight = 100,
		stack = true,
		close = false,
		description = "Deer Horns",
		client = {
			image = "deerhorns.png",
		}
	},

	["irishpub_sugar"] = {
		label = "Sugar",
		weight = 50,
		stack = true,
		close = false,
		description = "",
		client = {
			image = "irishpub_sugar.png",
		}
	},

	["tq_kiwi_juice"] = {
		label = "Kiwi Juice",
		weight = 50,
		stack = true,
		close = false,
		description = "",
		client = {
			image = "tq_kiwi_juice.png",
		}
	},

	["meatbird"] = {
		label = "Bird Feather",
		weight = 100,
		stack = true,
		close = false,
		description = "Bird Feather",
		client = {
			image = "birdfeather.png",
		}
	},

	["chickenbreast"] = {
		label = "Chicken Breast",
		weight = 100,
		stack = true,
		close = false,
		description = "",
		client = {
			status = {
				hunger = 11,
			},
			image = "chickenbreast.png",
		}
	},

	["heroinstagethree"] = {
		label = "Best Heroin",
		weight = 250,
		stack = true,
		close = false,
		description = "",
		client = {
			image = "heroinpowderstagethree.png",
		}
	},

	["pvegpizza"] = {
		label = "Vegetarian Pizza",
		weight = 1000,
		stack = true,
		close = true,
		description = "Vegetarian Pizza",
		client = {
			image = "pvegpizza.png",
		}
	},

	["vicodin"] = {
		label = "Vicodin",
		weight = 100,
		stack = true,
		close = true,
		description = "",
		client = {
			image = "vicodin.png",
		}
	},

	["casino_ego_chaser"] = {
		label = "Casino Ego Chaser",
		weight = 0,
		stack = false,
		close = false,
		description = "Casino Ego Chaser",
		client = {
			image = "casino_ego_chaser.png",
		}
	},

	["orange_aliens4"] = {
		label = "Quad Stack orange aliens",
		weight = 100,
		stack = true,
		close = true,
		description = "",
		client = {
			image = "alien_orange.png",
		}
	},

	["coffee"] = {
		label = "Coffee",
		weight = 200,
		stack = true,
		close = true,
		description = "Pump 4 Caffeine",
		client = {
			image = "coffee.png",
		}
	},

	["thickerlog"] = {
		label = "Thicker Pine Log",
		weight = 2200,
		stack = true,
		close = false,
		description = "The thickest cut of pine achievable with a hand axe.",
		client = {
			image = "thickerlog.png",
		}
	},

	["bean-sprunk"] = {
		label = "Sprunk",
		weight = 1000,
		stack = true,
		close = true,
		description = "",
		client = {
			image = "sprunk.png",
		}
	},

	["bristlenosepleco"] = {
		label = "Bristlenose Pleco",
		weight = 150,
		stack = false,
		close = true,
		description = "",
		client = {
			image = "bristlenosepleco.png",
		}
	},

	["vicodinbottle"] = {
		label = "Vicodin Bottle",
		weight = 100,
		stack = true,
		close = true,
		description = "",
		client = {
			image = "pillbottle.png",
		}
	},

	["cheesewrap"] = {
		label = "BS Cheese Wrap",
		weight = 150,
		stack = true,
		close = true,
		description = "BurgerShot Cheese Wrap",
		client = {
			status = {
				hunger = 44,
			},
			image = "burger-chickenwrap.png",
		}
	},

	["milkshake"] = {
		label = "Milkshake",
		weight = 500,
		stack = true,
		close = true,
		description = "BurgerShot Milkshake",
		client = {
			status = {
				thirst = 50,
			},
			image = "burger-milkshake.png",
		}
	},

	["predwine"] = {
		label = "Red Wine",
		weight = 1000,
		stack = true,
		close = true,
		description = "Red Wine",
		client = {
			image = "predwine.png",
		}
	},

	["bulletcasing"] = {
		label = "Bullet casing",
		weight = 400,
		stack = true,
		close = false,
		description = "A used bullet shell... Still in tact though... Interesting.",
		client = {
			image = "bullet_casing.png",
		}
	},

	["chemicalvapor"] = {
		label = "Chemical Vapors",
		weight = 1500,
		stack = true,
		close = false,
		description = "High Pressure Chemical Vapors, Explosive!",
		client = {
			image = "chemicalvapor.png",
		}
	},

	["gt-coffee"] = {
		label = "Coffee",
		weight = 100,
		stack = true,
		close = true,
		description = "The Coffees good huh?",
		client = {
			image = "gt-coffee.png",
		}
	},

	["bart_tabs"] = {
		label = "Bart Simpson Tabs",
		weight = 100,
		stack = true,
		close = true,
		description = "",
		client = {
			image = "bart_tabs.png",
		}
	},

	["blue_trolls4"] = {
		label = "Quad Stack blue trolls",
		weight = 100,
		stack = true,
		close = true,
		description = "",
		client = {
			image = "troll_blue.png",
		}
	},

	["pporkmeat"] = {
		label = "Pork Meat",
		weight = 1000,
		stack = true,
		close = true,
		description = "Pork Meat",
		client = {
			image = "pporkmeat.png",
		}
	},

	["orange_aliens3"] = {
		label = "Triple Stack orange aliens",
		weight = 100,
		stack = true,
		close = true,
		description = "",
		client = {
			image = "alien_orange.png",
		}
	},

	["joint"] = {
		label = "Joint",
		weight = 0,
		stack = true,
		close = true,
		description = "Sidney would be very proud at you",
		client = {
			image = "joint.png",
		}
	},

	["goldchain"] = {
		label = "Golden Chain",
		weight = 1500,
		stack = true,
		close = true,
		description = "A golden chain seems like the jackpot to me!",
		client = {
			image = "goldchain.png",
		}
	},

	["irishpub_watermelon_dream"] = {
		label = "Watermelon Dream",
		weight = 50,
		stack = true,
		close = false,
		description = "",
		client = {
			image = "irishpub_watermelon_dream.png",
		}
	},

	["hb-frenchtoast"] = {
		label = "French Toast",
		weight = 250,
		stack = true,
		close = true,
		description = "Yummy French Toast",
		client = {
			image = "hb-frenchtoast.png",
		}
	},

	["bottlecaps"] = {
		label = "Bottle caps",
		weight = 300,
		stack = true,
		close = true,
		description = "Some plastic caps for what looks like a variety of soda bottles.",
		client = {
			image = "bottlecaps.png",
		}
	},

	["pcoffeebeans"] = {
		label = "Coffee Beans",
		weight = 1000,
		stack = true,
		close = true,
		description = "Coffee Beans",
		client = {
			image = "pcoffeebeans.png",
		}
	},

	["tq_coconut"] = {
		label = "Coconut",
		weight = 50,
		stack = true,
		close = false,
		description = "",
		client = {
			image = "tq_coconut.png",
		}
	},

	["wildcherry_tabs"] = {
		label = "Wild Cherry Tabs",
		weight = 100,
		stack = true,
		close = true,
		description = "",
		client = {
			image = "wildcherry_tabs.png",
		}
	},

	["beancoffee"] = {
		label = "Coffe Beans",
		weight = 100,
		stack = true,
		close = true,
		description = "",
		client = {
			status = {
				hunger = 21,
			},
			image = "beancoffee.png",
		}
	},

	["meatcow"] = {
		label = "Cow Pelt",
		weight = 100,
		stack = true,
		close = false,
		description = "Cow Pelt",
		client = {
			image = "cowpelt.png",
		}
	},

	["pictuscatfish"] = {
		label = "Pictus Catfish",
		weight = 150,
		stack = false,
		close = true,
		description = "",
		client = {
			image = "pictuscatfish.png",
		}
	},

	["tunerlaptop"] = {
		label = "Tunerchip",
		weight = 2000,
		stack = false,
		close = true,
		description = "With this tunerchip you can get your car on steroids... If you know what you're doing",
		client = {
			image = "tunerchip.png",
		}
	},

	["blue_pl"] = {
		label = "Single Stack blue pl",
		weight = 100,
		stack = true,
		close = true,
		description = "",
		client = {
			image = "PL_blue.png",
		}
	},

	["pmacncheese"] = {
		label = "Mac N Cheese",
		weight = 1000,
		stack = true,
		close = true,
		description = "Mac N Cheese",
		client = {
			image = "pmacncheese.png",
		}
	},

	["advancedrepairkit"] = {
		label = "Advanced Repairkit",
		weight = 4000,
		stack = true,
		close = true,
		description = "A nice toolbox with stuff to repair your vehicle",
		client = {
			image = "advancedkit.png",
		}
	},

	["pnapollitanoslice"] = {
		label = "Napollitano Slice",
		weight = 1000,
		stack = true,
		close = true,
		description = "Napollitano Slice",
		client = {
			image = "ppizzaslice.png",
		}
	},

	["morphine"] = {
		label = "Morphine",
		weight = 100,
		stack = true,
		close = true,
		description = "",
		client = {
			image = "morphine.png",
		}
	},

	["marlin"] = {
		label = "Marlin",
		weight = 150,
		stack = false,
		close = true,
		description = "",
		client = {
			image = "marlin.png",
		}
	},

	["moneyshot"] = {
		label = "Money Shot",
		weight = 200,
		stack = true,
		close = true,
		description = "Money Shot",
		client = {
			status = {
				hunger = 43,
			},
			image = "burger-moneyshot.png",
		}
	},

	["pmushroomspizzaslice"] = {
		label = "Fungi slice",
		weight = 1000,
		stack = true,
		close = true,
		description = "Fungi Slice",
		client = {
			image = "ppizzaslice.png",
		}
	},

	["pizza"] = {
		label = "Kitty Pizza",
		weight = 100,
		stack = true,
		close = true,
		description = "",
		client = {
			status = {
				hunger = 44,
			},
			image = "catpizza.png",
		}
	},

	["tofu"] = {
		label = "Tofu",
		weight = 100,
		stack = true,
		close = true,
		description = "",
		client = {
			status = {
				hunger = 47,
			},
			image = "tofu.png",
		}
	},

	["pmargharita"] = {
		label = "Margharita Pizza",
		weight = 1000,
		stack = true,
		close = true,
		description = "Margharita Pizza",
		client = {
			image = "pmargharita.png",
		}
	},

	["poil"] = {
		label = "Oil",
		weight = 1000,
		stack = true,
		close = true,
		description = "Oil",
		client = {
			image = "poil.png",
		}
	},

	["ppizzaflour"] = {
		label = "Pizza Flour",
		weight = 1000,
		stack = true,
		close = true,
		description = "Pizza Flour",
		client = {
			image = "ppizzaflour.png",
		}
	},

	["catcoffee"] = {
		label = "Cat Coffee",
		weight = 100,
		stack = true,
		close = true,
		description = "",
		client = {
			status = {
				thirst = 23,
			},
			image = "catcoffee.png",
		}
	},

	["prutherfordhill"] = {
		label = "Rutherford Hill Red Wine",
		weight = 1000,
		stack = true,
		close = true,
		description = "Rutherford Hill Red Wine",
		client = {
			image = "prutherfordhill.png",
		}
	},

	["ifaks"] = {
		label = "ifaks",
		weight = 200,
		stack = true,
		close = true,
		description = "ifaks for healing and a complete stress remover.",
		client = {
			image = "ifaks.png",
		}
	},

	["ziptie"] = {
		label = "Zip tie",
		weight = 300,
		stack = true,
		close = true,
		description = "A zip tie",
		client = {
			image = "ziptie.png",
		}
	},

	["heroinvial"] = {
		label = "Vial Of Heroin",
		weight = 250,
		stack = true,
		close = false,
		description = "",
		client = {
			image = "heroin.png",
		}
	},

	["ecolalight"] = {
		label = "eCola Light",
		weight = 100,
		stack = true,
		close = true,
		description = "",
		client = {
			status = {
				thirst = 23,
			},
			image = "ecolalight.png",
		}
	},

	["keepcompanionwesty"] = {
		label = "Westy",
		weight = 500,
		stack = false,
		close = true,
		description = "Westy is your royal companion!",
		client = {
			image = "A_C_Westy.png",
		}
	},

	["white_cats3"] = {
		label = "Tricatse Stack White cats",
		weight = 100,
		stack = true,
		close = true,
		description = "",
		client = {
			image = "kitty_white.png",
		}
	},

	["keepcompanionpoodle"] = {
		label = "Poodle",
		weight = 500,
		stack = false,
		close = true,
		description = "Poodle is your royal companion!",
		client = {
			image = "A_C_Poodle.png",
		}
	},

	["notepad"] = {
		label = "Notepad",
		weight = 100,
		stack = true,
		close = 1,
		description = "",
		client = {
			image = "notepad.png",
		}
	},

	["rolex"] = {
		label = "Golden Watch",
		weight = 1500,
		stack = true,
		close = true,
		description = "A golden watch seems like the jackpot to me!",
		client = {
			image = "rolex.png",
		}
	},

	["hb-icecream-cone"] = {
		label = "Vanilla Cone",
		weight = 25,
		stack = true,
		close = true,
		description = "Classic Vanilla Cone",
		client = {
			image = "hb-icecream-cone.png",
		}
	},

	["jbcocktail"] = {
		label = "James Bond Cocktail",
		weight = 250,
		stack = true,
		close = true,
		description = "Cyber Bar Is The Best.",
		client = {
			image = "jbcocktail.png",
		}
	},

	["gt-raw_chicken"] = {
		label = "Raw Chicken",
		weight = 100,
		stack = true,
		close = true,
		description = "Might be used to make something",
		client = {
			image = "gt-rawchicken.png",
		}
	},

	["irishpub_strawberry"] = {
		label = "Strawberry",
		weight = 50,
		stack = true,
		close = false,
		description = "",
		client = {
			image = "irishpub_strawberry.png",
		}
	},

	["fishingrod"] = {
		label = "Fishing Rod",
		weight = 2200,
		stack = false,
		close = true,
		description = "finely crafted pole, Made in Baileys!",
		client = {
			image = "fishingrod.png",
		}
	},

	["white_playboys4"] = {
		label = "Quad Stack White Playboys",
		weight = 100,
		stack = true,
		close = true,
		description = "",
		client = {
			image = "playboy_white.png",
		}
	},

	["yinyangsheet"] = {
		label = "Yin and Yang Sheet",
		weight = 100,
		stack = true,
		close = true,
		description = "",
		client = {
			image = "yinyangsheet.png",
		}
	},

	["dbcocktail"] = {
		label = "Dragon Ball Cocktail",
		weight = 250,
		stack = true,
		close = true,
		description = "Cyber Bar Is The Best.",
		client = {
			image = "dbcocktail.png",
		}
	},

	["white_playboys2"] = {
		label = "Dual Stack White Playboys",
		weight = 100,
		stack = true,
		close = true,
		description = "",
		client = {
			image = "playboy_white.png",
		}
	},

	["tq_orange"] = {
		label = "Orange",
		weight = 50,
		stack = true,
		close = false,
		description = "",
		client = {
			image = "tq_orange.png",
		}
	},

	["white_pl"] = {
		label = "Single Stack White pl",
		weight = 100,
		stack = true,
		close = true,
		description = "",
		client = {
			image = "PL_white.png",
		}
	},

	["tq_ban_straw_juice"] = {
		label = "Banana & Strawberry Juice",
		weight = 50,
		stack = true,
		close = false,
		description = "",
		client = {
			image = "tq_ban_straw_juice.png",
		}
	},

	["irishpub_daquiri"] = {
		label = "Daquiri",
		weight = 50,
		stack = true,
		close = false,
		description = "",
		client = {
			image = "irishpub_daquiri.png",
		}
	},

	["meatlion"] = {
		label = "Cougar Claws",
		weight = 100,
		stack = true,
		close = false,
		description = "Cougar Claw",
		client = {
			image = "cougarclaw.png",
		}
	},

	["icecream"] = {
		label = "Ice Cream",
		weight = 500,
		stack = true,
		close = false,
		description = "Ice Cream.",
		client = {
			image = "burger-icecream.png",
		}
	},

	["frozennugget"] = {
		label = "Frozen Nuggets",
		weight = 500,
		stack = true,
		close = false,
		description = "Bag of Frozen Nuggets",
		client = {
			image = "burger-frozennugget.png",
		}
	},

	["tq_redhot_daquiri"] = {
		label = "Redhot Daquiri",
		weight = 50,
		stack = true,
		close = false,
		description = "",
		client = {
			image = "tq_redhot_daquiri.png",
		}
	},

	["heartstopper"] = {
		label = "HeartStopper",
		weight = 200,
		stack = true,
		close = true,
		description = "Heartstopper",
		client = {
			status = {
				hunger = 50,
			},
			image = "burger-heartstopper.png",
		}
	},

	["goldearring2"] = {
		label = "Old Wet Golden Earrings",
		weight = 200,
		stack = true,
		close = false,
		description = "This was found fishing, fair and square!",
		client = {
			image = "gold_earring.png",
		}
	},

	["casino_psqs"] = {
		label = "Casino Ps & Qs",
		weight = 0,
		stack = false,
		close = false,
		description = "Casino Ps & Qs",
		client = {
			image = "casino_psqs.png",
		}
	},

	["treemulch"] = {
		label = "Wooden Mulch",
		weight = 200,
		stack = true,
		close = false,
		description = "An array of roughly cut wooden chunks for pulping purposes.",
		client = {
			image = "treemulch.png",
		}
	},

	["lsd"] = {
		label = "LSD",
		weight = 500,
		stack = true,
		close = false,
		description = "Lets get this party started!",
		client = {
			image = "lsd.png",
		}
	},

	["funkopop_voldemort"] = {
		label = "Voldemort Funkopop",
		weight = 0,
		stack = true,
		close = false,
		description = "Voldemort Funkopop Toy",
		client = {
			image = "funkopop_voldemort.png",
		}
	},

	["cokestagethree"] = {
		label = "Best Raw Cocaine",
		weight = 100,
		stack = true,
		close = false,
		description = "Processed cocaine",
		client = {
			image = "cokestagethree.png",
		}
	},

	["vpn"] = {
		label = "VPN",
		weight = 100,
		stack = false,
		close = true,
		description = "Hmm",
		client = {
			image = "vpn.png",
		}
	},

	["orange_xtc4"] = {
		label = "Quad Stack Orange XTC",
		weight = 100,
		stack = true,
		close = true,
		description = "",
		client = {
			image = "unstampedorange.png",
		}
	},

	["tq_coffee"] = {
		label = "Coffee",
		weight = 50,
		stack = true,
		close = false,
		description = "",
		client = {
			image = "tq_coffee.png",
		}
	},

	["pchampagne"] = {
		label = "Champagne Bottle",
		weight = 1000,
		stack = true,
		close = true,
		description = "Champagne Bottle",
		client = {
			image = "pchampagne.png",
		}
	},

	["mdp2p"] = {
		label = "mdp2p",
		weight = 100,
		stack = true,
		close = true,
		description = "",
		client = {
			image = "mdp2p.png",
		}
	},

	["red_xtc"] = {
		label = "Single Stack Red XTC",
		weight = 100,
		stack = true,
		close = true,
		description = "",
		client = {
			image = "unstampedred.png",
		}
	},

	["diamond"] = {
		label = "Diamond",
		weight = 1000,
		stack = true,
		close = true,
		description = "A diamond seems like the jackpot to me!",
		client = {
			image = "diamond.png",
		}
	},

	["wd40"] = {
		label = "WD-40",
		weight = 250,
		stack = false,
		close = false,
		description = "A chemical compound with multiple purposes, including the removal of corrosion.",
		client = {
			image = "wd40.png",
		}
	},

	["isosafrole"] = {
		label = "isosafrole",
		weight = 100,
		stack = true,
		close = true,
		description = "",
		client = {
			image = "isosafrole.png",
		}
	},

	["pistol3"] = {
		label = "Slide",
		weight = 100,
		stack = true,
		close = false,
		description = "The grip of a Walther P-99 Pistol.",
		client = {
			image = "pistol3.png",
		}
	},

	["gt-nacho_cheese"] = {
		label = "Nacho Cheese",
		weight = 100,
		stack = true,
		close = true,
		description = "Might be used to make something",
		client = {
			image = "gt-nachocheese.png",
		}
	},

	["tq_just_peachy"] = {
		label = "Just Peachy",
		weight = 50,
		stack = true,
		close = false,
		description = "",
		client = {
			image = "tq_just_peachy.png",
		}
	},

	["tq_watermelon"] = {
		label = "Watermelon",
		weight = 50,
		stack = true,
		close = false,
		description = "",
		client = {
			image = "tq_watermelon.png",
		}
	},

	["blue_trolls"] = {
		label = "Single Stack blue trolls",
		weight = 100,
		stack = true,
		close = true,
		description = "",
		client = {
			image = "troll_blue.png",
		}
	},

	["ruby_necklace_silver2"] = {
		label = "Old Wet Ruby Necklace Silver",
		weight = 200,
		stack = true,
		close = false,
		description = "This was found fishing, fair and square!",
		client = {
			image = "ruby_necklace_silver.png",
		}
	},

	["mining_stone"] = {
		label = "Mined Stone",
		weight = 500,
		stack = true,
		close = true,
		description = "Mined Stone",
		client = {
			image = "mining_stone.png",
		}
	},

	["coke_small_brick"] = {
		label = "Coke Package",
		weight = 350,
		stack = true,
		close = true,
		description = "Small package of cocaine, mostly used for deals and takes a lot of space",
		client = {
			image = "coke_small_brick.png",
		}
	},

	["aluminumcan"] = {
		label = "Aluminium Can",
		weight = 200,
		stack = true,
		close = false,
		description = "Alumunim Cans",
		client = {
			image = "aluminiumcan.png",
		}
	},

	["blue_aliens3"] = {
		label = "Triple Stack blue aliens",
		weight = 100,
		stack = true,
		close = true,
		description = "",
		client = {
			image = "alien_blue.png",
		}
	},

	["bulletcasings"] = {
		label = "Bullet Casings",
		weight = 200,
		stack = true,
		close = false,
		description = "Bullet Casings",
		client = {
			image = "bulletcasings.png",
		}
	},

	["hb-junk"] = {
		label = "Junk",
		weight = 180,
		stack = true,
		close = true,
		description = "ENERGRY!!!",
		client = {
			image = "hb-junk.png",
		}
	},

	["airfilter"] = {
		label = "Airfilter",
		weight = 550,
		stack = true,
		close = true,
		description = "A filter to avoid contimaination of airflow into the motor vehicle.",
		client = {
			image = "airfilter.png",
		}
	},

	["irishpub_strawberry_juice"] = {
		label = "Strawberry Juice",
		weight = 50,
		stack = true,
		close = false,
		description = "",
		client = {
			image = "irishpub_strawberry_juice.png",
		}
	},

	["loosecoke"] = {
		label = "loose coke",
		weight = 100,
		stack = true,
		close = true,
		description = "Paper made specifically for encasing and smoking tobacco or cannabis.",
		client = {
			image = "loosecoke.png",
		}
	},

	["anchor"] = {
		label = "Boat Anchor",
		weight = 2500,
		stack = true,
		close = true,
		description = "Boat Anchor",
		client = {
			image = "anchor.png",
		}
	},

	["grouper"] = {
		label = "Grouper",
		weight = 150,
		stack = false,
		close = true,
		description = "",
		client = {
			image = "grouper.png",
		}
	},

	["gt-burrito"] = {
		label = "Burrito",
		weight = 100,
		stack = true,
		close = true,
		description = "Gunnar really makes some damn good Burritos huh?",
		client = {
			image = "gt-burrito.png",
		}
	},

	["white_xtc3"] = {
		label = "Triple Stack White XTC",
		weight = 100,
		stack = true,
		close = true,
		description = "",
		client = {
			image = "unstampedwhite.png",
		}
	},

	["sailfish"] = {
		label = "Sail Fish",
		weight = 150,
		stack = false,
		close = true,
		description = "",
		client = {
			image = "sailfish.png",
		}
	},

	["triplepress"] = {
		label = "Triple Pill Press",
		weight = 100,
		stack = true,
		close = true,
		description = "",
		client = {
			image = "pillpress.png",
		}
	},

	["methkey"] = {
		label = "Key A",
		weight = 200,
		stack = true,
		close = false,
		description = "Random Key, with \"Walter\" Engraved on the Back...",
		client = {
			image = "keya.png",
		}
	},

	["methtray"] = {
		label = "Meth Tray",
		weight = 200,
		stack = true,
		close = false,
		description = "make some meth",
		client = {
			image = "meth_tray.png",
		}
	},

	["emerald_necklace_silver2"] = {
		label = "Old Wet Emerald Necklace Silver",
		weight = 200,
		stack = true,
		close = false,
		description = "This was found fishing, fair and square!",
		client = {
			image = "emerald_necklace_silver.png",
		}
	},

	["sodium_hydroxide"] = {
		label = "Sodium Hydroxide",
		weight = 1500,
		stack = true,
		close = true,
		description = "Chemicals, handle with care!",
		client = {
			image = "sodium_hydroxide.png",
		}
	},

	["marijuana"] = {
		label = "Marijuana",
		weight = 500,
		stack = true,
		close = true,
		description = "Some fine smelling buds.",
		client = {
			image = "marijuana.png",
		}
	},

	["orange_pl2"] = {
		label = "Dual Stack orange pl",
		weight = 100,
		stack = true,
		close = true,
		description = "",
		client = {
			image = "PL_orange.png",
		}
	},

	["samsungtv"] = {
		label = "Samsung TV",
		weight = 7500,
		stack = true,
		close = true,
		description = "Cool Looking TV",
		client = {
			image = "tv.png",
		}
	},

	["petfood"] = {
		label = "pet food",
		weight = 500,
		stack = true,
		close = true,
		description = "food for your companion!",
		client = {
			image = "petfood.png",
		}
	},

	["diamond_earring_silver2"] = {
		label = "Old Wet Diamond Earrings Silver",
		weight = 200,
		stack = true,
		close = false,
		description = "This was found fishing, fair and square!",
		client = {
			image = "diamond_earring_silver.png",
		}
	},

	["groundbeef"] = {
		label = "Raw Hamburger Meat",
		weight = 100,
		stack = true,
		close = true,
		description = "",
		client = {
			image = "groundbeef.png",
		}
	},

	["emerald_earring_silver2"] = {
		label = "Old Wet Emerald Earrings Silver",
		weight = 200,
		stack = true,
		close = false,
		description = "This was found fishing, fair and square!",
		client = {
			image = "emerald_earring_silver.png",
		}
	},

	["ice-tea-limao"] = {
		label = "Lemon Ice Tea",
		weight = 1000,
		stack = true,
		close = true,
		description = "",
		client = {
			image = "icetea.png",
		}
	},

	["lsd_vial_two"] = {
		label = "Slightly Better LSD Vial",
		weight = 100,
		stack = true,
		close = true,
		description = "",
		client = {
			image = "lsd_vial_two.png",
		}
	},

	["hb-hunks-o-hen"] = {
		label = "Hunks O Hen",
		weight = 300,
		stack = true,
		close = true,
		description = "Hunky Bunky Chunky",
		client = {
			image = "hb-hunks-o-hen.png",
		}
	},

	["irishpub_redhot_daquiri"] = {
		label = "Redhot Daquiri",
		weight = 50,
		stack = true,
		close = false,
		description = "",
		client = {
			image = "irishpub_redhot_daquiri.png",
		}
	},

	["mining_ironbar"] = {
		label = "Iron Bar",
		weight = 500,
		stack = true,
		close = true,
		description = "Iron Bar",
		client = {
			image = "mining_ironbar.png",
		}
	},

	["shroombag"] = {
		label = "Bag of Shrooms",
		weight = 160,
		stack = true,
		close = false,
		description = "A small bag containing hallucinogenic mushrooms.",
		client = {
			image = "bagofshrooms.png",
		}
	},

	["heroinlabkit"] = {
		label = "Heroin Lab Kit",
		weight = 250,
		stack = true,
		close = false,
		description = "",
		client = {
			image = "labkit.png",
		}
	},

	["police_stormram"] = {
		label = "Stormram",
		weight = 18000,
		stack = true,
		close = true,
		description = "A nice tool to break into doors",
		client = {
			image = "police_stormram.png",
		}
	},

	["pelbowmacaroni"] = {
		label = "Elbow Macaroni",
		weight = 1000,
		stack = true,
		close = true,
		description = "Elbow Macaroni",
		client = {
			image = "pelbowmacaroni.png",
		}
	},

	["burger-tomato"] = {
		label = "Tomato",
		weight = 125,
		stack = true,
		close = true,
		description = "An Ingredient",
		client = {
			image = "bs_tomato.png",
		}
	},

	["gt-nachos"] = {
		label = "Nachos",
		weight = 100,
		stack = true,
		close = true,
		description = "Gunnar really makes some damn good Nachos huh?",
		client = {
			image = "gt-nachos.png",
		}
	},

	["hb-icecrean-mix"] = {
		label = "Icecream Mix",
		weight = 150,
		stack = true,
		close = true,
		description = "Ingredient",
		client = {
			image = "hb-icecream-mix.png",
		}
	},

	["blue_playboys"] = {
		label = "Single Stack blue Playboys",
		weight = 100,
		stack = true,
		close = true,
		description = "",
		client = {
			image = "playboy_blue.png",
		}
	},

	["ruby_earring2"] = {
		label = "Old Wet Ruby Earrings",
		weight = 200,
		stack = true,
		close = false,
		description = "This was found fishing, fair and square!",
		client = {
			image = "ruby_earring.png",
		}
	},

	["ptomatosouce"] = {
		label = "Tomato Souce",
		weight = 1000,
		stack = true,
		close = true,
		description = "Tomato Souce",
		client = {
			image = "ptomatosouce.png",
		}
	},

	["pancake"] = {
		label = "PawCake",
		weight = 100,
		stack = true,
		close = true,
		description = "",
		client = {
			status = {
				hunger = 45,
			},
			image = "pawcakes.png",
		}
	},

	["weed_skunk"] = {
		label = "Skunk 2g",
		weight = 200,
		stack = true,
		close = false,
		description = "A weed bag with 2g Skunk",
		client = {
			image = "weed_baggy.png",
		}
	},

	["electronickit"] = {
		label = "Electronic Kit",
		weight = 100,
		stack = true,
		close = true,
		description = "If you've always wanted to build a robot you can maybe start here. Maybe you'll be the new Elon Musk?",
		client = {
			image = "electronickit.png",
		}
	},

	["ppinkwine"] = {
		label = "Pink Wine",
		weight = 1000,
		stack = true,
		close = true,
		description = "Pink Wine",
		client = {
			image = "ppinkwine.png",
		}
	},

	["binoculars"] = {
		label = "Binoculars",
		weight = 600,
		stack = true,
		close = true,
		description = "Sneaky Breaky...",
		client = {
			image = "binoculars.png",
		}
	},

	["red_trolls4"] = {
		label = "Quad Stack red trolls",
		weight = 100,
		stack = true,
		close = true,
		description = "",
		client = {
			image = "troll_red.png",
		}
	},

	["weed_purple-haze"] = {
		label = "Purple Haze 2g",
		weight = 200,
		stack = true,
		close = false,
		description = "A weed bag with 2g Purple Haze",
		client = {
			image = "weed_baggy.png",
		}
	},

	["hb-orangotang"] = {
		label = "Orang O Tang",
		weight = 180,
		stack = true,
		close = true,
		description = "Orang O Tang",
		client = {
			image = "hb-orangotang.png",
		}
	},

	["heroinvialstagetwo"] = {
		label = "Better Vial of Heroin",
		weight = 250,
		stack = true,
		close = false,
		description = "",
		client = {
			image = "heroinstagetwo.png",
		}
	},

	["emptyvial"] = {
		label = "empty vial",
		weight = 100,
		stack = true,
		close = true,
		description = "",
		client = {
			image = "emptyvial.png",
		}
	},

	["orange_xtc3"] = {
		label = "Triple Stack Orange XTC",
		weight = 100,
		stack = true,
		close = true,
		description = "",
		client = {
			image = "unstampedorange.png",
		}
	},

	["white_cats2"] = {
		label = "Dual Stack White cats",
		weight = 100,
		stack = true,
		close = true,
		description = "",
		client = {
			image = "kitty_white.png",
		}
	},

	["pcaramelsyrup"] = {
		label = "Caramel Syrup",
		weight = 1000,
		stack = true,
		close = true,
		description = "Caramel Syrup",
		client = {
			image = "pcaramelsyrup.png",
		}
	},

	["shotrings"] = {
		label = "Ring Shots",
		weight = 200,
		stack = true,
		close = true,
		description = "Burgershot Onion Rings",
		client = {
			status = {
				hunger = 40,
			},
			image = "burger-shotrings.png",
		}
	},

	["dualpress"] = {
		label = "Dual Pill Press",
		weight = 100,
		stack = true,
		close = true,
		description = "",
		client = {
			image = "pillpress.png",
		}
	},

	["swordfish"] = {
		label = "Sword Fish",
		weight = 150,
		stack = false,
		close = true,
		description = "",
		client = {
			image = "swordfish.png",
		}
	},

	["speedball"] = {
		label = "The SpeedBall",
		weight = 100,
		stack = true,
		close = true,
		description = "",
		client = {
			status = {
				thirst = 24,
			},
			image = "speedball.png",
		}
	},

	["weed_white-widow_seed"] = {
		label = "White Widow Seed",
		weight = 0,
		stack = true,
		close = false,
		description = "A weed seed of White Widow",
		client = {
			image = "weed_seed.png",
		}
	},

	["cleaningkit"] = {
		label = "Cleaning Kit",
		weight = 250,
		stack = true,
		close = true,
		description = "A microfiber cloth with some soap will let your car sparkle again!",
		client = {
			image = "cleaningkit.png",
		}
	},

	["pseafood"] = {
		label = "Seafood Pizza",
		weight = 1000,
		stack = true,
		close = true,
		description = "Pizza Seafood",
		client = {
			image = "pseafood.png",
		}
	},

	["pmargharitaslice"] = {
		label = "Margharita Slice",
		weight = 1000,
		stack = true,
		close = true,
		description = "Margharita Slice",
		client = {
			image = "ppizzaslice.png",
		}
	},

	["irishpub_banana_juice"] = {
		label = "Banana Juice",
		weight = 50,
		stack = true,
		close = false,
		description = "",
		client = {
			image = "irishpub_banana_juice.png",
		}
	},

	["toolbox"] = {
		label = "Toolbox",
		weight = 150,
		stack = true,
		close = false,
		description = "",
		client = {
			image = "toolbox.png",
		}
	},

	["obobatea"] = {
		label = "Orange Boba Tea",
		weight = 100,
		stack = true,
		close = true,
		description = "",
		client = {
			status = {
				thirst = 43,
			},
			image = "bubbleteaorange.png",
		}
	},

	["brokencup"] = {
		label = "Broken Cup",
		weight = 500,
		stack = true,
		close = true,
		description = "A nice piece of glasswear... or it would have been if the handle wasn't cracked.",
		client = {
			image = "brokencup.png",
		}
	},

	["cheeseburger"] = {
		label = "Cheese Burger",
		weight = 100,
		stack = true,
		close = true,
		description = "",
		client = {
			image = "cheeseburger.png",
		}
	},

	["blowtorch"] = {
		label = "Blowtorch",
		weight = 3500,
		stack = false,
		close = false,
		description = "A high propane instrument used for welding and other things...",
		client = {
			image = "blowtorch.png",
		}
	},

	["plogger"] = {
		label = "Logger Beer",
		weight = 1000,
		stack = true,
		close = true,
		description = "Logger Beer",
		client = {
			image = "plogger.png",
		}
	},

	["housekeys"] = {
		label = "House Keys",
		weight = 200,
		stack = true,
		close = false,
		description = "Random House Keys",
		client = {
			image = "housekeys.png",
		}
	},

	["sapphire_earring2"] = {
		label = "Old Wet Sapphire Earrings",
		weight = 200,
		stack = true,
		close = false,
		description = "This was found fishing, fair and square!",
		client = {
			image = "sapphire_earring.png",
		}
	},

	["hb-chicken-strips-raw"] = {
		label = "Chicken Strips Raw",
		weight = 180,
		stack = true,
		close = true,
		description = "Ingredient",
		client = {
			image = "hb-chicken-strips-raw.png",
		}
	},

	["hb-horn-sandwich"] = {
		label = "Horn Sandwich",
		weight = 175,
		stack = true,
		close = true,
		description = "A classic Sandwich",
		client = {
			image = "hb-horn-sandwich.png",
		}
	},

	["ancientcoin"] = {
		label = "Ancient Coin",
		weight = 200,
		stack = true,
		close = false,
		description = "This seems really old and unique.",
		client = {
			image = "aincientcoin.png",
		}
	},

	["irishpub_green_dream"] = {
		label = "Green Dream",
		weight = 50,
		stack = true,
		close = false,
		description = "",
		client = {
			image = "irishpub_green_dream.png",
		}
	},

	["white_aliens2"] = {
		label = "Dual Stack White aliens",
		weight = 100,
		stack = true,
		close = true,
		description = "",
		client = {
			image = "alien_white.png",
		}
	},

	["white_pl4"] = {
		label = "Quad Stack White pl",
		weight = 100,
		stack = true,
		close = true,
		description = "",
		client = {
			image = "PL_white.png",
		}
	},

	["hb-hashbrowns"] = {
		label = "Hashbrowns",
		weight = 150,
		stack = true,
		close = true,
		description = "Once a potatoe and now a hashbrown",
		client = {
			image = "hb-hashbrowns.png",
		}
	},

	["orange_trolls4"] = {
		label = "Quad Stack orange trolls",
		weight = 100,
		stack = true,
		close = true,
		description = "",
		client = {
			image = "troll_orange.png",
		}
	},

	["funkopop_hermione"] = {
		label = "Hermione Funkopop",
		weight = 0,
		stack = true,
		close = false,
		description = "Hermione Funkopop Toy",
		client = {
			image = "funkopop_hermione.png",
		}
	},

	["pwhiskey"] = {
		label = "Whiskey",
		weight = 1000,
		stack = true,
		close = true,
		description = "Whiskey",
		client = {
			image = "pwhiskey.png",
		}
	},

	["xanax_prescription"] = {
		label = "Xanax Prescription",
		weight = 250,
		stack = true,
		close = false,
		description = "",
		client = {
			image = "xanaxprescription.png",
		}
	},

	["pseafoodmix"] = {
		label = "Seafood Mix",
		weight = 1000,
		stack = true,
		close = true,
		description = "Seafood Mix",
		client = {
			image = "pseafoodmix.png",
		}
	},

	["burger-coupon15"] = {
		label = "Burgershot Coupon 15% Off",
		weight = 15,
		stack = true,
		close = false,
		description = "15% Off Coupon ",
		client = {
			image = "bs_coupon-fifteen.png",
		}
	},

	["crisps"] = {
		label = "Crisps",
		weight = 100,
		stack = true,
		close = true,
		description = "",
		client = {
			status = {
				hunger = 26,
			},
			image = "chips.png",
		}
	},

	["nekodonut"] = {
		label = "Neko Donut",
		weight = 100,
		stack = true,
		close = true,
		description = "",
		client = {
			status = {
				hunger = 46,
			},
			image = "catdonut.png",
		}
	},

	["firstaid"] = {
		label = "First Aid",
		weight = 2500,
		stack = true,
		close = true,
		description = "You can use this First Aid kit to get people back on their feet",
		client = {
			image = "firstaid.png",
		}
	},

	["orange_trolls"] = {
		label = "Single Stack orange trolls",
		weight = 100,
		stack = true,
		close = true,
		description = "",
		client = {
			image = "troll_orange.png",
		}
	},

	["pumpkinseed"] = {
		label = "Pumpkin Seed Fish",
		weight = 150,
		stack = false,
		close = true,
		description = "",
		client = {
			image = "pumpkinseed.png",
		}
	},

	["pespressocoffeecup"] = {
		label = "Espresso Coffee Cup",
		weight = 1000,
		stack = true,
		close = true,
		description = "Espresso Coffee Cup",
		client = {
			image = "pespressocoffeecup.png",
		}
	},

	["weed_amnesia"] = {
		label = "Amnesia 2g",
		weight = 200,
		stack = true,
		close = false,
		description = "A weed bag with 2g Amnesia",
		client = {
			image = "weed_baggy.png",
		}
	},

	["mint"] = {
		label = "Matcha",
		weight = 100,
		stack = true,
		close = true,
		description = "",
		client = {
			image = "matcha.png",
		}
	},

	["beandonut"] = {
		label = "Donut",
		weight = 100,
		stack = true,
		close = true,
		description = "",
		client = {
			status = {
				hunger = 20,
			},
			image = "popdonut.png",
		}
	},

	["nekolatte"] = {
		label = "Neko Latte",
		weight = 100,
		stack = true,
		close = true,
		description = "",
		client = {
			status = {
				thirst = 21,
			},
			image = "latte.png",
		}
	},

	["cake"] = {
		label = "Strawberry Cake",
		weight = 100,
		stack = true,
		close = true,
		description = "",
		client = {
			status = {
				hunger = 45,
			},
			image = "cake.png",
		}
	},

	["rimjob"] = {
		label = "Rim Job",
		weight = 200,
		stack = true,
		close = true,
		description = "BurgerShot Donut",
		client = {
			status = {
				hunger = 40,
			},
			image = "burger-rimjob.png",
		}
	},

	["blue_playboys4"] = {
		label = "Quad Stack blue Playboys",
		weight = 100,
		stack = true,
		close = true,
		description = "",
		client = {
			image = "playboy_blue.png",
		}
	},

	["flour"] = {
		label = "Flour",
		weight = 100,
		stack = true,
		close = true,
		description = "",
		client = {
			status = {
				hunger = 50,
			},
			image = "flour.png",
		}
	},

	["keepcompanionrabbit"] = {
		label = "Rabbit",
		weight = 500,
		stack = false,
		close = true,
		description = "Rabbit is your royal companion!",
		client = {
			image = "A_C_Rabbit_01.png",
		}
	},

	["irishpub_chocolate"] = {
		label = "Chocolate",
		weight = 50,
		stack = true,
		close = false,
		description = "",
		client = {
			image = "irishpub_chocolate.png",
		}
	},

	["hydrochloric_acid"] = {
		label = "Hydrochloric Acid",
		weight = 1500,
		stack = true,
		close = true,
		description = "Chemicals, handle with care!",
		client = {
			image = "hydrochloric_acid.png",
		}
	},

	["goldcoin"] = {
		label = "Gold coin",
		weight = 200,
		stack = true,
		close = false,
		description = "o.O GOLD!",
		client = {
			image = "goldcoin.png",
		}
	},

	["sapphire_earring_silver2"] = {
		label = "Old Wet Sapphire Earrings Silver",
		weight = 200,
		stack = true,
		close = false,
		description = "This was found fishing, fair and square!",
		client = {
			image = "sapphire_earring_silver.png",
		}
	},

	["burger-mshakeformula"] = {
		label = "Milkshake Formula",
		weight = 125,
		stack = true,
		close = true,
		description = "An Ingredient",
		client = {
			image = "bs_ingredients_icecream.png",
		}
	},

	["cokeburner"] = {
		label = "Nokia Burner",
		weight = 100,
		stack = true,
		close = true,
		description = "",
		client = {
			image = "cokeburner.png",
		}
	},

	["lsd_one_vial"] = {
		label = "Weakest LSD Vial",
		weight = 100,
		stack = true,
		close = true,
		description = "",
		client = {
			image = "lsd_one_vial.png",
		}
	},

	["bakingsoda"] = {
		label = "Baking Soda",
		weight = 300,
		stack = true,
		close = false,
		description = "Household Baking Soda!",
		client = {
			image = "bakingsoda.png",
		}
	},

	["gym_membership"] = {
		label = "Gym Membership",
		weight = 0,
		stack = false,
		close = true,
		description = "Gym Membership for Pump and Run",
		client = {
			image = "gym_membership.png",
		}
	},

	["meatcoyote"] = {
		label = "Coyote Pelt",
		weight = 100,
		stack = true,
		close = false,
		description = "Coyote Pelt",
		client = {
			image = "coyotepelt.png",
		}
	},

	["pineapplesheet"] = {
		label = "Pineapple Sheet",
		weight = 100,
		stack = true,
		close = true,
		description = "",
		client = {
			image = "pineapplesheet.png",
		}
	},

	["sake"] = {
		label = "Sake",
		weight = 100,
		stack = true,
		close = true,
		description = "",
		client = {
			status = {
				thirst = 48,
			},
			image = "sake.png",
		}
	},

	["casino_coffee"] = {
		label = "Casino Coffee",
		weight = 0,
		stack = false,
		close = false,
		description = "Casino Coffee",
		client = {
			image = "casino_coffee.png",
		}
	},

	["xtcbaggy"] = {
		label = "Bag of XTC",
		weight = 0,
		stack = true,
		close = true,
		description = "Pop those pills baby",
		client = {
			image = "xtc_baggy.png",
		}
	},

	["blue_aliens2"] = {
		label = "Dual Stack blue aliens",
		weight = 100,
		stack = true,
		close = true,
		description = "",
		client = {
			image = "alien_blue.png",
		}
	},

	["blue_cats3"] = {
		label = "Tricatse Stack blue cats",
		weight = 100,
		stack = true,
		close = true,
		description = "",
		client = {
			image = "kitty_blue.png",
		}
	},

	["trackerdisabler"] = {
		label = "Tracker Disabler",
		weight = 100,
		stack = false,
		close = true,
		description = "What is this?",
		client = {
			image = "trackerdisabler.png",
		}
	},

	["weed_ak47"] = {
		label = "AK47 2g",
		weight = 200,
		stack = true,
		close = false,
		description = "A weed bag with 2g AK47",
		client = {
			image = "weed_baggy.png",
		}
	},

	["keepcompanioncoyote"] = {
		label = "Coyote",
		weight = 500,
		stack = false,
		close = true,
		description = "Coyote is your royal companion!",
		client = {
			image = "A_C_Coyote.png",
		}
	},

	["gt-lettuce"] = {
		label = "Lettuce",
		weight = 100,
		stack = true,
		close = true,
		description = "Might be used to make something",
		client = {
			image = "gt-lettuce.png",
		}
	},

	["electronicscrap"] = {
		label = "Electronic Scrap",
		weight = 100,
		stack = true,
		close = false,
		description = "A couple of wires and a circuit board, might be able to do something with this?",
		client = {
			image = "electronics.png",
		}
	},

	["pespressomacchiato"] = {
		label = "Espresso Macchiato",
		weight = 1000,
		stack = true,
		close = true,
		description = "Espresso Macchiato",
		client = {
			image = "pespressomacchiato.png",
		}
	},

	["bullhead"] = {
		label = "Bullhead",
		weight = 150,
		stack = false,
		close = true,
		description = "",
		client = {
			image = "bullhead.png",
		}
	},

	["gasoline"] = {
		label = "gasoline",
		weight = 0,
		stack = false,
		close = false,
		description = "oil",
		client = {
			image = "gasoline.png",
		}
	},

	["gt-beef_taco"] = {
		label = "Beef Taco",
		weight = 100,
		stack = true,
		close = true,
		description = "Gunnar really makes some damn good Beef Tacos huh?",
		client = {
			image = "gt-beeftaco.png",
		}
	},

	["carengine"] = {
		label = "Engine Block",
		weight = 2250,
		stack = true,
		close = true,
		description = "Combustion engine from a motor vehicle.",
		client = {
			image = "carengine.png",
		}
	},

	["bean-agua"] = {
		label = "Water",
		weight = 1000,
		stack = true,
		close = true,
		description = "",
		client = {
			image = "water_bottle.png",
		}
	},

	["wildcherrysheet"] = {
		label = "Wild Cherry Sheet",
		weight = 100,
		stack = true,
		close = true,
		description = "",
		client = {
			image = "wildcherrysheet.png",
		}
	},

	["chickenwrap"] = {
		label = "BS Goat Cheese Wrap",
		weight = 150,
		stack = true,
		close = true,
		description = "BurgerShot Goat Cheese Wrap",
		client = {
			status = {
				hunger = 45,
			},
			image = "burger-goatwrap.png",
		}
	},

	["blue_pl3"] = {
		label = "Triple Stack blue pl",
		weight = 100,
		stack = true,
		close = true,
		description = "",
		client = {
			image = "PL_blue.png",
		}
	},

	["pepperoni"] = {
		label = "Pepperoni",
		weight = 0,
		stack = true,
		close = true,
		description = "Pepperoni",
		client = {
			image = "pepperoni.png",
		}
	},

	["carpart_hood"] = {
		label = "Car Hood",
		weight = 15000,
		stack = true,
		close = true,
		description = "A hood from a vehicle",
		client = {
			image = "images/carpart_hood.png",
		}
	},

	["lsa"] = {
		label = "LSA",
		weight = 500,
		stack = true,
		close = false,
		description = "Almost ready to party...",
		client = {
			image = "lsa.png",
		}
	},

	["liquidmix"] = {
		label = "Liquid Chem Mix",
		weight = 1500,
		stack = true,
		close = false,
		description = "Chemicals, handle with care!",
		client = {
			image = "liquidmix.png",
		}
	},

	["carpart_wheel"] = {
		label = "Car Wheel",
		weight = 10000,
		stack = true,
		close = true,
		description = "A wheel from a vehicle",
		client = {
			image = "images/carpart_wheel.png",
		}
	},

	["orange_cats2"] = {
		label = "Dual Stack orange cats",
		weight = 100,
		stack = true,
		close = true,
		description = "",
		client = {
			image = "kitty_orange.png",
		}
	},

	["lsd_vial_six"] = {
		label = "Purest LSD",
		weight = 100,
		stack = true,
		close = true,
		description = "",
		client = {
			image = "lsd_vial_six.png",
		}
	},

	["cryptostick"] = {
		label = "Crypto Stick",
		weight = 200,
		stack = false,
		close = true,
		description = "Why would someone ever buy money that doesn't exist.. How many would it contain..?",
		client = {
			image = "cryptostick.png",
		}
	},

	["orange_cats3"] = {
		label = "Tricatse Stack orange cats",
		weight = 100,
		stack = true,
		close = true,
		description = "",
		client = {
			image = "kitty_orange.png",
		}
	},

	["casino_coke"] = {
		label = "Casino Kofola",
		weight = 0,
		stack = false,
		close = false,
		description = "Casino Kofola",
		client = {
			image = "casino_coke.png",
		}
	},

	["sparkplugs"] = {
		label = "Sparkplugs",
		weight = 250,
		stack = true,
		close = true,
		description = "Car part generating electrical spark for combustion of motor vehicle fuel.",
		client = {
			image = "sparkplugs.png",
		}
	},

	["hb-potatoes"] = {
		label = "Potatoes",
		weight = 100,
		stack = true,
		close = true,
		description = "Ingredient",
		client = {
			image = "hb-potatoes.png",
		}
	},

	["dolphin"] = {
		label = "Dolphin",
		weight = 5000,
		stack = false,
		close = false,
		description = "Dolphin",
		client = {
			image = "dolphin.png",
		}
	},

	["ramen"] = {
		label = "Bowl of Ramen",
		weight = 100,
		stack = true,
		close = true,
		description = "",
		client = {
			status = {
				hunger = 47,
			},
			image = "ramen.png",
		}
	},

	["sprunklight"] = {
		label = "Sprunk Light",
		weight = 100,
		stack = true,
		close = true,
		description = "",
		client = {
			status = {
				thirst = 22,
			},
			image = "sprunklight.png",
		}
	},

	["carhood"] = {
		label = "Car Hood",
		weight = 1450,
		stack = true,
		close = true,
		description = "The hood component of a motor vehicle.",
		client = {
			image = "carhood.png",
		}
	},

	["burgermeat"] = {
		label = "Burger Meat",
		weight = 500,
		stack = true,
		close = false,
		description = "Cooked Burger Meat",
		client = {
			image = "burgermeat.png",
		}
	},

	["kurkakola"] = {
		label = "Cola",
		weight = 500,
		stack = true,
		close = true,
		description = "For all the thirsty out there",
		client = {
			image = "cola.png",
		}
	},
	['wood'] = {
		label = 'Wood',
		weight = 1,
		stack = true,
		close = true,
		description = nil
	},
	
	['metal'] = {
		label = 'Metal',
		weight = 1,
		stack = true,
		close = true,
		description = nil
	},
	
	['rope'] = {
		label = 'Rope',
		weight = 1,
		stack = true,
		close = true,
		description = nil
	},
	
	['shovel'] = {
		label = 'Shovel',
		weight = 1,
		stack = true,
		close = true,
		description = nil
	},
	['spray'] = {
		label = 'Spray',
		weight = 250,
		close = true,
		consume = 0,
		client = {},
		server = {
			export = 'rcore_spray.spray',
		},
	},
	['spray_remover'] = {
		label = 'Spray Remover',
		weight = 250,
		close = true,
		consume = 0,
		client = {},
		server = {
			export = 'rcore_spray.spray_remover',
		},
	},
	['steelfile'] = {
		label = 'Steel File',
		weight = 300,
	},

}