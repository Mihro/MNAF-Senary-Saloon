tp @e[tag=vixie] -65.0 5.0 -288.0 270 0
execute as @e[tag=vixie] at @s run playsound mnaf:salvage.ai.scream.bonnie hostile @a ~ ~ ~ 100.0 0.5
data merge entity @e[tag=vixie,tag=model,limit=1] {Pose:{Head:[0f,0f,0f]}}
tag @e[tag=vixie,tag=base] add scaring