# Run by: as @e[tag=vixie,tag=model,tag=active] at @s

execute if score Stage Vixie matches 2 run function mnaf:vixie/stage_3
execute if score Stage Vixie matches 1 run function mnaf:vixie/stage_2
execute if score Stage Vixie matches 0 run function mnaf:vixie/stage_1
