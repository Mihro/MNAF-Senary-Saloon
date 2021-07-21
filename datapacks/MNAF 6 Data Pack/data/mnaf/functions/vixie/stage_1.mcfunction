# Run by: as @e[tag=vixie,tag=model,tag=active] at @s

scoreboard players set Stage Vixie 1
execute as @e[tag=vixie,tag=base,sort=nearest,limit=1] run data merge entity @s {NoAI:0b}
data merge entity @s {Pose:{Head:[-10f,0f,0f]}}