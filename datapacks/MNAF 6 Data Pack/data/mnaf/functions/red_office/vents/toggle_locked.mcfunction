# Run by: as @e[tag=vent]

execute if score Percent VentBattery matches 1.. run tag @s[tag=!vent_locked] add toggle_locked
tag @s[tag=vent_locked] add toggle_unlocked

execute if entity @s[tag=toggle_unlocked] run tag @s remove vent_locked 
execute if entity @s[tag=toggle_locked] run tag @s add vent_locked 

tag @s[tag=toggle_unlocked] remove toggle_unlocked
tag @s[tag=toggle_locked] remove toggle_locked