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
}
