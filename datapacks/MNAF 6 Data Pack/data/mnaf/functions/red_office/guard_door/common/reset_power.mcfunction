scoreboard objectives add GuardDoorPower dummy
scoreboard objectives add GuardDoorTimer dummy
execute unless score PercentTime GuardDoorTimer matches 1.. run scoreboard players set PercentTime GuardDoorTimer 80

scoreboard players set @e[tag=guard_door,tag=door] GuardDoorPower 100
scoreboard players operation @e[tag=guard_door,tag=door] GuardDoorTimer = PercentTime GuardDoorTimer