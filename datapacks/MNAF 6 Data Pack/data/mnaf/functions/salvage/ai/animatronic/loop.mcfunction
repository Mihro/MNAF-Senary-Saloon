# Run by: as @e[tag=salvage,tag=ai,tag=animatronic,tag=active] at @s

# Make each animatronic loop their own timers if <0
scoreboard players operation @s[scores={ShedTimer=..0}] ShedTimer = AIStageDuration ShedTimer
scoreboard players remove @s[tag=active] ShedTimer 1

# Check if animatronic is seen
execute if score @s ShedTimer matches 0 run function mnaf:salvage/ai/animatronic/stage/check_is_seen

# Run scare loop if stage 5 animatronic exists
execute if entity @s[tag=salvage,tag=ai,tag=animatronic,scores={ShedStage=5}] run function mnaf:salvage/ai/animatronic/stage/scare/loop