local QBCore = GetResourceState('qb-core'):find('start') and exports['qb-core']:GetCoreObject() or nil

if not QBCore then return end

function toggleClothes(toggle, clothes)
    if toggle then
        utils.debug("Putting on clothes")

        local playerData = QBCore.Functions.GetPlayerData()
        local gender = playerData.charinfo.gender
        local playerPed = cache.ped
        local jobGrade = playerData.job.grade

        utils.debug("Job Grade " .. jobGrade)

        if Config.ClothingScript and Config.ClothingScript ~= 'core' then
            local model = exports['illenium-appearance']:getPedModel(playerPed)

            if model == 'mp_m_freemode_01' then
                data = clothes.male[jobGrade] or clothes.male[1]
            elseif model == 'mp_f_freemode_01' then
                data = clothes.female[jobGrade] or clothes.female[1]
            end

            utils.debug("Using " .. Config.ClothingScript)

            exports[Config.ClothingScript]:setPedComponents(playerPed, {
                braccia      = { component_id = 3, texture = 0, drawable = data['arms'] },
                tshirt       = {
                    component_id = 8,
                    texture = data[jobGrade]['tshirt_2'],
                    drawable = data['tshirt_1']
                },
                torso        = {
                    component_id = 11,
                    texture = data['torso_2'],
                    drawable = data['torso_1']
                },
                giubbo       = {
                    component_id = 9,
                    texture = data['bproof_2'],
                    drawable = data['bproof_1']
                },
                decalcomanie = {
                    component_id = 10,
                    texture = data['decals_2'],
                    drawable = data['decals_1']
                },
                sciarpe      = {
                    component_id = 7,
                    texture = data['chain_2'],
                    drawable = data['chain_1']
                },
                pantaloni    = {
                    component_id = 4,
                    texture = data['pants_2'],
                    drawable = data['pants_1']
                },
                scarpe       = {
                    component_id = 6,
                    texture = data['shoes_2'],
                    drawable = data['shoes_1']
                },
                borsone      = {
                    component_id = 5,
                    texture = data['bag_color'],
                    drawable = data['bag']
                },
            })
        elseif Config.ClothingScript == 'core' then
            utils.debug("Using " .. Config.ClothingScript)

            if gender == 1 then
                TriggerEvent('qb-clothing:client:loadOutfit', { outfitData = clothes.male[jobGrade] })
            else
                TriggerEvent('qb-clothing:client:loadOutfit', { outfitData = clothes.female[jobGrade] })
            end
        end
    else
        utils.debug("Putting civil clothes")

        TriggerServerEvent('qb-clothes:loadPlayerSkin')
    end
end

function getPlayerJobGrade()
    local playerData = QBCore.Functions.GetPlayerData()
    local jobGrade = playerData.job.grade

    return jobGrade
end

function isPoliceOfficer()
    local playerData = QBCore.Functions.GetPlayerData()

    return playerData.job.name == Config.PoliceJobName
end
