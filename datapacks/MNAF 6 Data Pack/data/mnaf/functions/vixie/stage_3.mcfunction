# Run by: as @e[tag=vixie,tag=model,tag=active] at @s

scoreboard players set Stage Vixie 3
tp @e[tag=vixie] -76.0 27.5 -288.0
execute as @e[tag=vixie,tag=base,sort=nearest,limit=1] run data merge entity @s {NoAI:1b}
