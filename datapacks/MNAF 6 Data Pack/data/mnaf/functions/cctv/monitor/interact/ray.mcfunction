### Run by player

execute at @e[tag=monitor_label,tag=!label_interacted,distance=..0.02] run function mnaf:cctv/monitor/interact/label/label

# Debug
#summon area_effect_cloud ~ ~ ~ {Duration:100,Rotation:[0f,-90f],Tags:["monitor_interact_ray"]}

execute if entity @s[distance=..3] positioned ^ ^ ^0.02 run function mnaf:cctv/monitor/interact/ray