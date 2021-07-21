# Run by: as @e[tag=guard_door,tag=button_marker] at @s at @a[distance=..3,scores={GrdDrBtnIntrct=1..}]

execute if entity @s[distance=..0.5,tag=red] as @e[tag=guard_door,tag=door,tag=red] run function mnaf:red_office/guard_door/common/door/toggle_state
#summon area_effect_cloud ~ ~ ~ {Duration:5,Rotation:[0f,-90f]}
execute if entity @p[distance=..3] if entity @s[distance=..3] positioned ^ ^ ^0.1 if block ~ ~ ~ air run function mnaf:red_office/guard_door/common/button/interact_ray