# Run by: as @e[tag=salvage,tag=ai,tag=animatronic,tag=active] at @s not in view

tag @s add changing_stage
scoreboard players operation target SalvageAIMarker = @s ShedStage

execute if entity @s[tag=salvage,tag=ai,tag=animatronic,tag=bonnie] as @e[tag=salvage,tag=ai,tag=marker,tag=bonnie] if score @s SalvageAIMarker = target SalvageAIMarker at @s as @e[tag=salvage,tag=ai,tag=animatronic,tag=bonnie] run function mnaf:salvage/ai/animatronic/bonnie/move_to_marker
execute if entity @s[tag=salvage,tag=ai,tag=animatronic,tag=freddy] as @e[tag=salvage,tag=ai,tag=marker,tag=freddy] if score @s SalvageAIMarker = target SalvageAIMarker at @s as @e[tag=salvage,tag=ai,tag=animatronic,tag=freddy] run function mnaf:salvage/ai/animatronic/freddy/move_to_marker
execute if entity @s[tag=salvage,tag=ai,tag=animatronic,tag=foxy  ] as @e[tag=salvage,tag=ai,tag=marker,tag=foxy  ] if score @s SalvageAIMarker = target SalvageAIMarker at @s as @e[tag=salvage,tag=ai,tag=animatronic,tag=foxy  ] run function mnaf:salvage/ai/animatronic/foxy/move_to_marker
execute if entity @s[tag=salvage,tag=ai,tag=animatronic,tag=chica ] as @e[tag=salvage,tag=ai,tag=marker,tag=chica ] if score @s SalvageAIMarker = target SalvageAIMarker at @s as @e[tag=salvage,tag=ai,tag=animatronic,tag=chica ] run function mnaf:salvage/ai/animatronic/chica/move_to_marker

scoreboard players reset target SalvageAIMarker
tag @s remove changing_stage