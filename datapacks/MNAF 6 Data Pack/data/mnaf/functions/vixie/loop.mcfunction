# Timer and stage
execute as @e[tag=vixie,tag=model,tag=active] if score Timer Vixie matches 0.. run scoreboard players remove Timer Vixie 1
execute as @e[tag=vixie,tag=model,tag=active] if score Timer Vixie matches 0 at @s run function mnaf:vixie/check_increase
execute as @e[tag=vixie,tag=model,tag=active] if score Timer Vixie matches 0 run scoreboard players operation Timer Vixie = StageDuration Vixie

# Per stage
# 1
execute if score Stage Vixie matches 1 as @e[tag=vixie] at @s if entity @p[distance=..10] facing entity @p feet run tp @s ~ ~ ~ ~ ~
execute if score Stage Vixie matches 1 as @e[tag=vixie,tag=model] at @s if entity @p[distance=..10] run data merge entity @s {Pose:{Head:[0f,0f,0f]}}
execute if score Stage Vixie matches 1 as @e[tag=vixie] at @s unless entity @p[distance=..10] run tp @s ~ ~ ~ 230 ~
execute if score Stage Vixie matches 1 as @e[tag=vixie,tag=model] at @s unless entity @p[distance=..10] run data merge entity @s {Pose:{Head:[-15f,0f,0f]}}
# 3
execute if score Stage Vixie matches 3 if entity @p[x=-71,y=11,z=-293,distance=..1,tag=player,tag=cctv_spectating] run function mnaf:vixie/scare/queue
# 4
execute as @e[tag=vixie,tag=base,tag=scaring] at @s run tp @s ~0.5 ~ ~
execute as @e[tag=vixie,tag=base,tag=scaring] at @s unless block ~ ~ ~ air unless block ~ ~ ~ #minecraft:doors run tp @s ~ ~0.2 ~

# Blocked by door
execute as @e[tag=vixie,tag=scaring] at @s if entity @e[tag=guard_door,tag=door,tag=closed,distance=..1.5] run function mnaf:vixie/scare/blocked