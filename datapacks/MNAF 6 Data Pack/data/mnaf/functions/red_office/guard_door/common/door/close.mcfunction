# Run by: @e[tag=guard_door,tag=door]

tag @s[tag=raise] remove raise
tag @s[tag=opened] remove opened
execute unless score @s GuardDoorPower matches ..0 run tag @s add lower