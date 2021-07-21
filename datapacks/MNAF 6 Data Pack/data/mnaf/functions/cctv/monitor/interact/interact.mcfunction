### Run by player

scoreboard players reset @s VillagerInteract

#tellraw @s "Interacted with monitor"

tag @e[tag=label_interacted] remove label_interacted
kill @e[tag=monitor_interact_ray]
execute anchored eyes positioned ^ ^ ^0.5 run function mnaf:cctv/monitor/interact/ray