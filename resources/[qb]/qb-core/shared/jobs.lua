QBShared = QBShared or {}
QBShared.ForceJobDefaultDutyAtLogin = true -- true: Force duty state to jobdefaultDuty | false: set duty state from database last saved
QBShared.QBJobsStatus = false -- true: integrate qb-jobs into the whole of qb-core | false: treat qb-jobs as an add-on resource.
QBShared.Jobs = {} -- All of below has been migrated into qb-jobs
if QBShared.QBJobsStatus then return end
QBShared.Jobs = {
	['unemployed'] = {
		label = 'Civilian',
		defaultDuty = true,
		offDutyPay = false,
		grades = {
            ['0'] = {
                name = 'Freelancer',
                payment = 10
            },
        },
	},
	['police'] = {
		label = 'LSPD Law Enforcement',
        type = "leo",
		defaultDuty = true,
		offDutyPay = false,
		grades = {
            ['0'] = {
                name = 'Cadet',
                payment = 250
            },
			['1'] = {
                name = 'Officer',
                payment = 280
            },
			['2'] = {
                name = 'Officer 2',
                payment = 300
            },
			['3'] = {
                name = 'Officer 3',
                payment = 320
            },
			['4'] = {
                name = 'Snr. Officer',
                payment = 325
            },
			['5'] = {
                name = 'Corporal',
                payment = 350
            },
			['6'] = {
                name = 'Sergeant',
                payment = 375
            },
			['7'] = {
                name = 'Lieutenant',
                payment = 400
            },
			['8'] = {
                name = 'Captain',
				isboss = true,
                payment = 450
            },
			['9'] = {
                name = 'Assistant Chief',
				isboss = true,
                payment = 475
            },
			['10'] = {
                name = 'Chief',
				isboss = true,
                payment = 500
            },
        },
	},
		['bcso'] = {
		label = 'BCSO Law Enforcement',
        type = "leo",
		defaultDuty = true,
		offDutyPay = false,
		grades = {
            ['0'] = {
                name = 'Cadet',
                payment = 300
            },
			['1'] = {
                name = 'Deputy',
                payment = 300
            },
			['2'] = {
                name = 'Snr. Deputy',
                payment = 325
            },
			['3'] = {
                name = 'Corporal',
                payment = 350
            },
			['4'] = {
                name = 'Sergeant',
                payment = 375
            },
			['5'] = {
                name = 'Lieutenant',
                payment = 400
            },
			['6'] = {
                name = 'Captain',
				isboss = true,
                payment = 450
            },
			['7'] = {
                name = 'Sheriff',
				isboss = true,
                payment = 500
            },
        },
	},
	['ambulance'] = {
		label = 'EMS',
        type = 'ems',
		defaultDuty = true,
		offDutyPay = false,
		grades = {
            ['0'] = {
                name = 'Trainee',
                payment = 300
            },
			['1'] = {
                name = 'Jr. Paramedic',
                payment = 350
            },
			['2'] = {
                name = 'Nurse',
                payment = 400
            },
			['3'] = {
                name = 'Resident',
                payment = 450
            },
			['4'] = {
                name = 'Doctor',
                payment = 500
            },
			['5'] = {
                name = 'Paramedic',
                payment = 400
            },
			['6'] = {
                name = 'Snr. Paramedic',
                payment = 425
            },
			['7'] = {
                name = 'Surgeon',
                payment = 600
            },
			['8'] = {
                name = 'Fire Captain',
				isboss = true,
                payment = 450
            },
			['9'] = {
                name = 'Paramedic Command',
				isboss = true,
                payment = 450
            },
			['10'] = {
                name = 'Snr. Doctor',
				isboss = true,
                payment = 650
            },
			['11'] = {
                name = 'Head Doctor',
				isboss = true,
                payment = 750
            },
			['12'] = {
                name = 'LSFD Chief',
				isboss = true,
                payment = 500
            },
			['13'] = {
                name = 'SAMS Chief',
				isboss = true,
                payment = 500
            },
        },
	},
	['realestate'] = {
		label = 'Real Estate',
		defaultDuty = true,
		offDutyPay = false,
		grades = {
            ['0'] = {
                name = 'Trainee',
                payment = 75
            },
			['1'] = {
                name = 'Jr. Agent',
                payment = 100
            },
			['2'] = {
                name = 'Real Estate Agent',
                payment = 150
            },
			['3'] = {
                name = 'Real Estate Supervisor',
                payment = 200
            },
			['4'] = {
                name = 'Manager',
				isboss = true,
                payment = 250
            },
        },
	},
	['taxi'] = {
		label = 'Taxi',
		defaultDuty = true,
		offDutyPay = false,
		grades = {
            ['0'] = {
                name = 'Recruit',
                payment = 50
            },
			['1'] = {
                name = 'Driver',
                payment = 75
            },
			['2'] = {
                name = 'Event Driver',
                payment = 100
            },
			['3'] = {
                name = 'Sales',
                payment = 125
            },
			['4'] = {
                name = 'Manager',
				isboss = true,
                payment = 150
            },
        },
	},
    ['bus'] = {
		label = 'Bus',
		defaultDuty = true,
		offDutyPay = false,
		grades = {
            ['0'] = {
                name = 'Driver',
                payment = 50
            },
		},
	},
	['cardealer'] = {
		label = 'Vehicle Dealer',
		defaultDuty = true,
		offDutyPay = false,
		grades = {
            ['0'] = {
                name = 'Recruit',
                payment = 50
            },
			['1'] = {
                name = 'Showroom Sales',
                payment = 75
            },
			['2'] = {
                name = 'Business Sales',
                payment = 100
            },
			['3'] = {
                name = 'Finance',
                payment = 125
            },
			['4'] = {
                name = 'Manager',
				isboss = true,
                payment = 150
            },
        },
	},
	['Harmony'] = {
		label = 'Mechanic',
        type = "mechanic",
		defaultDuty = true,
		offDutyPay = false,
		grades = {
            ['0'] = {
                name = 'Trainee',
                payment = 200
            },
			['1'] = {
                name = 'Mechanic',
                payment = 250
            },
			['2'] = {
                name = 'Snr. Mechanic',
                payment = 275
            },
			['3'] = {
                name = 'Supervisor',
                payment = 350
            },
			['4'] = {
                name = 'Manager',
				isboss = true,
                payment = 400
            },
        },
        ['Benny'] = {
            label = 'Mechanic',
            type = "mechanic",
            defaultDuty = true,
            offDutyPay = false,
            grades = {
                ['0'] = {
                    name = 'Trainee',
                    payment = 200
                },
                ['1'] = {
                    name = 'Mechanic',
                    payment = 250
                },
                ['2'] = {
                    name = 'Snr. Mechanic',
                    payment = 275
                },
                ['3'] = {
                    name = 'Supervisor',
                    payment = 350
                },
                ['4'] = {
                    name = 'Manager',
                    isboss = true,
                    payment = 400
                },
            },		
	},
	['Tuners'] = {
		label = 'Mechanic',
        type = "mechanic",
		defaultDuty = true,
		offDutyPay = false,
		grades = {
            ['0'] = {
                name = 'Trainee',
                payment = 200
            },
			['1'] = {
                name = 'Mechanic',
                payment = 250
            },
			['2'] = {
                name = 'Snr. Mechanic',
                payment = 275
            },
			['3'] = {
                name = 'Supervisor',
                payment = 350
            },
			['4'] = {
                name = 'Manager',
				isboss = true,
                payment = 400
            },
        },
	},
	['Ottos'] = {
		label = 'Mechanic',
        type = "mechanic",
		defaultDuty = true,
		offDutyPay = false,
		grades = {
            ['0'] = {
                name = 'Trainee',
                payment = 200
            },
			['1'] = {
                name = 'Mechanic',
                payment = 250
            },
			['2'] = {
                name = 'Snr. Mechanic',
                payment = 275
            },
			['3'] = {
                name = 'Supervisor',
                payment = 350
            },
			['4'] = {
                name = 'Manager',
				isboss = true,
                payment = 400
            },
        },
		
	},
	['Hayes'] = {
		label = 'Mechanic',
        type = "mechanic",
		defaultDuty = true,
		offDutyPay = false,
		grades = {
            ['0'] = {
                name = 'Trainee',
                payment = 200
            },
			['1'] = {
                name = 'Mechanic',
                payment = 250
            },
			['2'] = {
                name = 'Snr. Mechanic',
                payment = 275
            },
			['3'] = {
                name = 'Supervisor',
                payment = 350
            },
			['4'] = {
                name = 'Manager',
				isboss = true,
                payment = 400
            },
        },
		
	},
	['judge'] = {
		label = 'Honorary',
		defaultDuty = true,
		offDutyPay = false,
		grades = {
            ['0'] = {
                name = 'Judge',
                payment = 100
            },
        },
	},
	['lawyer'] = {
		label = 'Law Firm',
		defaultDuty = true,
		offDutyPay = false,
		grades = {
            ['0'] = {
                name = 'Associate',
                payment = 50
            },
        },
	},
	['reporter'] = {
		label = 'Reporter',
		defaultDuty = true,
		offDutyPay = false,
		grades = {
            ['0'] = {
                name = 'Journalist',
                payment = 10
            },
        },
	},
	['trucker'] = {
		label = 'Trucker',
		defaultDuty = true,
		offDutyPay = false,
		grades = {
            ['0'] = {
                name = 'Driver',
                payment = 10
            },
        },
	},
	['tow'] = {
		label = 'Towing',
		defaultDuty = true,
		offDutyPay = false,
		grades = {
            ['0'] = {
                name = 'Driver',
                payment = 10
            },
        },
	},
	['garbage'] = {
		label = 'Garbage',
		defaultDuty = true,
		offDutyPay = false,
		grades = {
            ['0'] = {
                name = 'Collector',
                payment = 10
            },
        },
	},
	['vineyard'] = {
		label = 'Vineyard',
		defaultDuty = true,
		offDutyPay = false,
		grades = {
            ['0'] = {
                name = 'Picker',
                payment = 10
            },
        },
	},
	['hotdog'] = {
		label = 'Hotdog',
		defaultDuty = true,
		offDutyPay = false,
		grades = {
            ['0'] = {
                name = 'Sales',
                payment = 10
            },
        },
	},
    ['airport'] = {
        label = 'Airport',
        defaultDuty = true,
        offDutyPay = false,
        grades = {
            ['0'] = {
                name = 'Recruit',
                payment = 0
            },
            ['1'] = {
                name = 'Pilot',
                payment = 0
            },
            ['2'] = {
                name = 'Lead Pilot',
                payment = 0
            },
            ['3'] = {
                name = 'Air-Traffic Controller',
                isboss = true, 
                bankAuth = true,
                payment = 0
            },
        },
    },
    ['beanmachine'] = {
        label = 'Bean Machine',
        defaultDuty = true,
        grades = {
            ['0'] = { name = 'Recruit', payment = 50 },
            ['1'] = { name = 'Novice', payment = 75 },
            ['2'] = { name = 'Experienced', payment = 100 },
            ['3'] = { name = 'Advanced', payment = 125 },
            ['4'] = { name = 'Manager', isboss = true, payment = 150 },
        },
    },
    ["hornysburger"] = {
		label = "Hornys Employee",
		defaultDuty = true,
		offDutyPay = false,
		grades = {
            ['0'] = {
                name = "Trainee",
                payment = 90
            },
			['1'] = {
                name = "Employee",
                payment = 100
            },
			['2'] = {
                name = "Burger Flipper",
                payment = 110
            },
			['3'] = {
                name = "Manager",
                payment = 120
            },
			['4'] = {
                name = "CEO",
				isboss = true,
                bankAuth = true,
                payment = 135
            },
        },
	},
    ['burgershot'] = {
        label = 'BurgerShot',
        defaultDuty = true,
        offDutyPay = false,
        grades = {
            ['0'] = { name = 'Recruit', payment = 50 },
            ['1'] = { name = 'Novice', payment = 75 },
            ['2'] = { name = 'Experienced', payment = 100 },
            ['3'] = { name = 'Advanced', payment = 125 },
            ['4'] = { name = 'Manager', isboss = true, payment = 150 },
        },
    },
    ['catcafe'] = {
        label = 'Cat Cafe',
        defaultDuty = true,
        grades = {
            ['0'] = { name = 'Recruit', payment = 50 },
            ['1'] = { name = 'Novice', payment = 75 },
            ['2'] = { name = 'Experienced', payment = 100 },
            ['3'] = { name = 'Advanced', payment = 125 },
            ['4'] = { name = 'Manager', isboss = true, payment = 150 },
        },
    },
	['gruppesechs'] = {
        label = 'Gruppe 6',
        defaultDuty = true,
        offDutyPay = false,
        grades = {
            ['0'] = {
                name = 'Collector',
                payment = 50
            },
        },
    },        
}