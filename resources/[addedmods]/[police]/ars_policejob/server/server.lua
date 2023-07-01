CreateThread(function()
    local cfg = Config.PoliceStation
    local armory = cfg.armory.storage

    exports.ox_inventory:RegisterStash(armory.stashId, armory.stashLabel, 500, 1000 * 1000, nil,
        { [Config.PoliceJobName] = armory.minGradeAccess }, nil)

    for id, stash in pairs(cfg.stash) do
        exports.ox_inventory:RegisterStash(id, stash.label, stash.slots, stash.weight * 1000,
            cfg.stash.shared and true or nil, { [Config.PoliceJobName] = stash.min_grade }, stash.pos)
    end
end)

lib.callback.register('ars_policejob:getItemCount', function(source, stash, item)
    local inventory = stash

    local items = exports.ox_inventory:Search(inventory, 'count', item)

    return items
end)

RegisterNetEvent('ars_policejob:giveItemToPlayer', function(stash, item, quantity)
    if not isPoliceOfficer(source) or not source or source < 1 then return end

    exports.ox_inventory:AddItem(source, item, quantity)
    exports.ox_inventory:RemoveItem(stash, item, quantity)
end)

RegisterNetEvent('ars_policejob:activateBlip', function(data)
    if not isPoliceOfficer(source) or not source or source < 1 then return end

    TriggerClientEvent('ars_policejob:activateBlip', -1, data)
end)
