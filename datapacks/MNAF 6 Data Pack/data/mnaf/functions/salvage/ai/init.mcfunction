# Run by: Player, Server

# Reset animatronics
kill @e[tag=salvage,tag=ai,tag=animatronic]

# Summon animatronics at starting positions
execute as @e[tag=salvage,tag=ai,tag=marker,scores={SalvageAIMarker=1}] at @s run function mnaf:salvage/ai/init/animatronic_spawns

# Set animatronic stage to 0
scoreboard players set @e[tag=salvage,tag=ai,tag=animatronic] ShedStage 1
scoreboard players set @e[tag=salvage,tag=ai,tag=animatronic] ShedTimer 0