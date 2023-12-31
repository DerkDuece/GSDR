local cats = Config.Cats
local dogs = Config.Dogs
local animals = Config.Animals
local framework = Config.Core

if framework == "qb-core" then
  exports['qb-target']:AddTargetModel(cats, {
    options = {
      {
        type = "client",
        event = "bostra-pet:petCat",
        label = Config.CatLabel,
        icon = Config.CatIcon,
      }
    },
    distance = Config.TargetDistance,
  })

  exports['qb-target']:AddTargetModel(dogs, {
    options = {
      {
        type = "client",
        event = "bostra-pet:petDog",
        label = Config.DogLabel,
        icon = Config.DogIcon,
      }
    },
    distance = Config.TargetDistance,
  })
  if Config.EnableAnimals then
    exports['qb-target']:AddTargetModel(animals, {
      options = {
        {
          type = "client",
          event = "bostra-pet:petAnimal",
          label = Config.AniLabel,
          icon = Config.AniIcon,
        }
      },
      distance = Config.TargetDistance,
    })
  end

elseif framework == "ox_core" then
  local catOptions = {
    [1] = {
    name = 'petcat',
    event = 'bostra-pet:petCat',
    icon = Config.CatIcon,
    label = Config.CatLabel,
  }}
  for _, cat in ipairs(Config.Cats) do
    exports.ox_target:addModel(cat, catOptions)
  end
  local dogOptions = {
    [1] = {
    name = 'petdog',
    event = 'bostra-pet:petDog',
    icon = Config.DogIcon,
    label = Config.DogLabel,
  }}
  for _, dog in ipairs(Config.Dogs) do
    exports.ox_target:addModel(dog, dogOptions)
  end
local aniOptions = {
  [1] = {
  name = 'petanimal',
  event = 'bostra-pet:petAni',
  icon = Config.AniIcon,
  label = Config.AniLabel,
}}
for _, dog in ipairs(Config.Animals) do
  exports.ox_target:addModel(animal, aniOptions)
end
end



--generic animals
RegisterNetEvent('bostra-pet:petAnimal')
AddEventHandler('bostra-pet:petAnimal', function()
  TriggerServerEvent("InteractSound_SV:PlayWithinDistance", 10, "animal", 0.3)
  if lib.progressBar({
    duration = Config.Time,
    label = 'Petting The Animal',
    useWhileDead = false,
    canCancel = true,
    disable = {
      car = true,
      move = true,
      combat = true,
      inventory = true,
    },
    anim = {
      duration = Config.Time,
      dict = 'creatures@rottweiler@tricks@',
      clip = 'petting_franklin'
    },
  }) then
StopAnimTask(PlayerPedId(), "creatures@rottweiler@tricks@", "petting_franklin", 1.0)
TriggerServerEvent('hud:server:RelieveStress', Config.Relief)
else
StopAnimTask(PlayerPedId(), "creatures@rottweiler@tricks@", "petting_franklin", 1.0)
TriggerServerEvent('hud:server:GainStress', Config.Gain)
end
end)

--dog
RegisterNetEvent('bostra-pet:petDog')
AddEventHandler('bostra-pet:petDog', function()
  TriggerServerEvent("InteractSound_SV:PlayWithinDistance", 10, "dog", 0.3)
  if lib.progressBar({
        duration = Config.Time,
        label = 'Petting The Dog',
        useWhileDead = false,
        canCancel = true,
        disable = {
          car = true,
          move = true,
          combat = true,
          inventory = true,
        },
        anim = {
          duration = Config.Time,
          dict = 'creatures@rottweiler@tricks@',
          clip = 'petting_franklin'
        },
      }) then
    StopAnimTask(PlayerPedId(), "creatures@rottweiler@tricks@", "petting_franklin", 1.0)
    TriggerServerEvent('hud:server:RelieveStress', Config.Relief)
  else
    StopAnimTask(PlayerPedId(), "creatures@rottweiler@tricks@", "petting_franklin", 1.0)
    TriggerServerEvent('hud:server:GainStress', Config.Gain)
  end
end)


--cat
RegisterNetEvent('bostra-pet:petCat')
AddEventHandler('bostra-pet:petCat', function()
  TriggerServerEvent("InteractSound_SV:PlayWithinDistance", 10, "cat", 0.3)

  if lib.progressBar({
        duration = Config.Time,
        label = 'Petting The Cat',
        useWhileDead = false,
        canCancel = true,
        disable = {
          car = true,
          move = true,
          combat = true,
          inventory = true,
        },
        anim = {
          duration = Config.Time,
          dict = 'creatures@rottweiler@tricks@',
          clip = 'petting_franklin'
        },
      }) then
    StopAnimTask(PlayerPedId(), "creatures@rottweiler@tricks@", "petting_franklin", 1.0)
    TriggerServerEvent('hud:server:RelieveStress', Config.Relief)
  else
    StopAnimTask(PlayerPedId(), "creatures@rottweiler@tricks@", "petting_franklin", 1.0)
    TriggerServerEvent('hud:server:GainStress', Config.Gain)
  end
end)


--DEBUG FOR TESTING SPAWNS A PACK OF ANIMALS IN A RADIUS WHEN YOU PRESS E ANYWHERE BY ANYONE!!! Don't uncomment unless testing.