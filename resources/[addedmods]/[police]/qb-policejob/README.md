# qb-policejob
Police Job for QB-Core Framework :police_officer:

# License

    QBCore Framework
    Copyright (C) 2021 Joshua Eger

    This program is free software: you can redistribute it and/or modify
    it under the terms of the GNU General Public License as published by
    the Free Software Foundation, either version 3 of the License, or
    (at your option) any later version.

    This program is distributed in the hope that it will be useful,
    but WITHOUT ANY WARRANTY; without even the implied warranty of
    MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
    GNU General Public License for more details.

    You should have received a copy of the GNU General Public License
    along with this program.  If not, see <https://www.gnu.org/licenses/>

## Dependencies
- [qb-core](https://github.com/qbcore-framework/qb-core)
- [qb-bossmenu](https://github.com/qbcore-framework/qb-bossmenu)  (Deprecated) - For the boss menu
- [qb-management](https://github.com/qbcore-framework/qb-management) (Replaces qb-bossmenu) - For the boss/gang menu
- [qb-garages](https://github.com/qbcore-framework/qb-garages) - For the vehicle spawner
- [qb-clothing](https://github.com/qbcore-framework/qb-clothing) - For the locker room
- [qb-phone](https://github.com/qbcore-framework/qb-phone) - For the MEOS app and notifications etc.
- [qb-smallresources](https://github.com/qbcore-framework/qb-smallresources) (Replaces qb-log) - qb-log was added to qb-smallresources
- [qb-menu](https://github.com/qbcore-framework/qb-menu) - For the vehicle menus
- [qb-input](https://github.com/qbcore-framework/qb-input) - For accessing evidence stashes


## Showcase
- [Video](https://www.youtube.com/watch?v=0kt5zgQ3i4A) 
- [Config.lua](https://youtu.be/ajM93jKdKFM)

## Features
- Multi departmetn optios
- Option for peds
- More Config options

## Ox_target
if u want to use [ox_target](https://github.com/overextended/ox_target/releases) then u need to chang somthings on ox_target.

qb-target.lua/ line 18

Before
```lua
 v.groups = v.job
```

After
```lua
v.groups = v.job or v.jobType
```

framework/qb.lua replace the folowing event
"PlayerHasGroups" whit the provided code below
```lua
function PlayerHasGroups(filter)
    local _type = type(filter)

    if _type == 'string' then
        local job = playerData.job.name == filter
        local jobType = playerData.job.type == filter
        local gang = playerData.gang.name == filter
        local citizenId = playerData.citizenid == filter

        if job or gang or citizenId or jobType then
            return true
        end
    elseif _type == 'table' then
        local tabletype = table.type(filter)

        if tabletype == 'hash' then
            for name, grade in pairs(filter) do
                local job = playerData.job.name == name
                local jobType = playerData.job.type == name
                local gang = playerData.gang.name == name
                local citizenId = playerData.citizenid == name

                if job and grade <= playerData.job.grade.level or gang and grade <= playerData.gang.grade.level or citizenId or jobType  then
                    return true
                end
            end
        elseif tabletype == 'array' then
            for i = 1, #filter do
                local name = filter[i]
                local job = playerData.job.name == name
                local jobType = playerData.job.type == name
                local gang = playerData.gang.name == name
                local citizenId = playerData.citizenid == name

                if job or gang or citizenId or jobType then
                    return true
                end
            end
        end
    end
end
```

## ToDo
- Secur veh spawning events
- fix heli.lua
- Add gread for garage
