# Run by: as @e[tag=guard_door,tag=door]

# Count down scores
execute if score @s GuardDoorPower matches 0.. if score @s GuardDoorTimer matches 0.. run scoreboard players remove @s GuardDoorTimer 1
execute if score @s GuardDoorPower matches 0.. if score @s GuardDoorTimer matches 0 run scoreboard players remove @s GuardDoorPower 1

# Display scores
execute as @s[tag=guard_door,tag=red,tag=door,scores={GuardDoorTimer=0}] at @s at @e[tag=guard_door,tag=red,tag=button_marker] run function mnaf:red_office/guard_door/red/display_power

# Reset timer
execute if score @s GuardDoorTimer matches 0 run scoreboard players operation @s GuardDoorTimer = PercentTime GuardDoorTimer

# Ran out of power
execute if score @s GuardDoorPower matches 0 run function mnaf:red_office/guard_door/common/door/open
#execute if score @s GuardDoorPower matches 0 run scoreboard players set @s GuardDoorPower -1