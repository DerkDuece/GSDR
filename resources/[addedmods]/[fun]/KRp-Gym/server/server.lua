local QBCore = exports['qb-core']:GetCoreObject()
QBCore.Functions.CreateCallback('getStrength', function(source, cb)
  local xPlayer = QBCore.Functions.GetPlayer(source)

  exports.oxmysql:execute('SELECT strength FROM player_skills WHERE identifier = @identifier', {
      ['@identifier'] = xPlayer.identifier
  }, function(result)
      if result[1] ~= nil then
          cb(result[1].strength)
      else
          cb(nil)
      end
  end)
end)

local cooldowns = {} -- Initialize the cooldowns table

QBCore.Functions.CreateCallback('krp_gym:checkCooldown', function(source, cb, playerId)
  local now = os.time(os.date("!*t")) * 1000
  local cooldownTime = Config.Cooldown * 60000


  if cooldowns[playerId] and cooldowns[playerId] > now then

      cb(cooldowns[playerId] - now)
  else
      cooldowns[playerId] = now + cooldownTime
      cb(0)
  end
end)

QBCore.Functions.CreateCallback('getStamina', function(source, cb)
  local xPlayer = QBCore.Functions.GetPlayer(source)

  exports.oxmysql:execute('SELECT stamina FROM player_skills WHERE identifier = @identifier', {
      ['@identifier'] = xPlayer.identifier
  }, function(result)
      if result[1] ~= nil then
          cb(result[1].stamina)
      else
          cb(nil)
      end
  end)
end)

RegisterServerEvent('updateStamina')
AddEventHandler('updateStamina', function(value)
  local xPlayer = QBCore.Functions.GetPlayer(source)

  exports.oxmysql:execute('UPDATE player_skills SET stamina = @value WHERE identifier = @identifier', {
      ['@value'] = value,
      ['@identifier'] = xPlayer.identifier
  })
end)

AddEventHandler('QBCore:Client:OnPlayerLoaded', function(playerId, xPlayer)
  exports.oxmysql:execute('INSERT IGNORE INTO player_skills (identifier, strength, stamina) VALUES (@identifier, @strength, @stamina)', {
      ['@identifier'] = xPlayer.identifier,
      ['@strength'] = 0,
      ['@stamina'] = 0
  })
end)
  
QBCore.Functions.CreateCallback('krp_gym:checkitem', function(source, cb, item)
  local _source = source
  local xPlayer = QBCore.Functions.GetPlayer(_source)
  local items = xPlayer.inventory

  cb(exports.ox_inventory:Search(source, 'count', item))
end)

QBCore.Functions.CreateCallback('krp_shop:checkMoney', function(source, cb, price)
  local xPlayer = QBCore.Functions.GetPlayer(source)
  if xPlayer.getMoney() >= price then
    cb(true)
  else
    cb(false)    
  end
end)

QBCore.Functions.CreateCallback('krp_shop:buy', function(source, cb, price, item, pocet)
  local xPlayer = QBCore.Functions.GetPlayer(source)
  xPlayer.Functions.RemoveMoney(price)
  xPlayer.Functions.AddItem(item, pocet)
  cb(true)
end)

RegisterServerEvent('updateStrength')
AddEventHandler('updateStrength', function(value)
  local xPlayer = QBCore.Functions.GetPlayer(source)

  exports.oxmysql:execute('UPDATE player_skills SET strength = @value WHERE identifier = @identifier', {
    ['@value'] = value,
    ['@identifier'] = xPlayer.identifier
  })
end)


QBCore.Functions.CreateCallback('bike_shop:buyBike', function(source, cb, model, price)
  local xPlayer = QBCore.Functions.GetPlayer(source)

  if xPlayer.getMoney() >= price then
      xPlayer.Functions.RemoveMoney(price)
      cb(true)
  else
      cb(false)
  end
end)