# Run by: as @e[tag=salvage,tag=ai,tag=marker,scores={SalvageAIMarker=1}] at @s

# Switch type of marker for summon choice
execute if entity @s[tag=bonnie] run function mnaf:salvage/common/animatronic/summon/bonnie
execute if entity @s[tag=freddy] run function mnaf:salvage/common/animatronic/summon/freddy
execute if entity @s[tag=foxy  ] run function mnaf:salvage/common/animatronic/summon/foxy
execute if entity @s[tag=chica ] run function mnaf:salvage/common/animatronic/summon/chica

# Tag summoned animatronic as an ai
tag @e[tag=salvage,tag=animatronic,sort=nearest,limit=1] add ai

# Copy pose and rotation
execute as @e[tag=salvage,tag=ai,tag=animatronic] at @s run data modify entity @s Pose set from entity @e[tag=salvage,tag=ai,tag=marker,sort=nearest,limit=1] Pose
execute as @e[tag=salvage,tag=ai,tag=animatronic] at @s run data modify entity @s Rotation set from entity @e[tag=salvage,tag=ai,tag=marker,sort=nearest,limit=1] Rotation
tp @e[tag=salvage,tag=ai,tag=animatronic,sort=nearest,limit=1] ~ ~ ~ ~ ~

# Debug
execute as @e[tag=salvage,tag=ai,tag=animatronic] run data merge entity @s {Glowing:0b}
execute as @e[tag=salvage,tag=ai,tag=animatronic] run data merge entity @s {Invisible:1b}