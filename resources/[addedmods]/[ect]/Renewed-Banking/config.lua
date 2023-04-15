config = {
    renewedMultiJob = false, -- https://github.com/Renewed-Scripts/qb-phone Built into the qb-phone edit.
    atms = {
        `prop_atm_01`,
        `prop_atm_02`,
        `prop_atm_03`,
        `prop_fleeca_atm`
    },
    peds = {
        [1] = { -- Pacific Standard
            model = 'u_m_m_bankman',
            coords = vector4(269.34, 217.23, 106.28, 75.59),
            createAccounts = true
        },
        [2] = {
            model = 'ig_barry',
            coords = vector4(313.84, -280.58, 54.16, 338.31)
        },
        [3] = {
            model = 'ig_barry',
            coords = vector4(149.46, -1042.09, 29.37, 335.43)
        },
        [4] = {
            model = 'ig_barry',
            coords = vector4(-351.23, -51.28, 49.04, 341.73)
        },
        [5] = {
            model = 'ig_barry',
            coords = vector4(-1211.9, -331.9, 37.78, 20.07)
        },
        [6] = {
            model = 'ig_barry',
            coords = vector4(-2961.14, 483.09, 15.7, 83.84)
        },
        [7] = {
            model = 'ig_barry',
            coords = vector4(1174.8, 2708.2, 38.09, 178.52)
        },
        [8] = { -- paleto
            model = 'u_m_m_bankman',
            coords = vector4(-109.01, 6471.66, 31.63, 222.7),
            createAccounts = true
        }
    }
}
