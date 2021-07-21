# If vent placed
execute as @a[scores={PlaceVent=1..}] run function mnaf:vent/place

# Find state
execute at @a as @e[tag=vent,tag=!vent_locked,distance=..5] at @s positioned ^ ^ ^0.45 run function mnaf:vent/state/check
# Change state
execute at @a as @e[tag=vent,distance=..5] at @s run function mnaf:vent/state/change

scoreboard players set @a[scores={VentSneak=1..}] VentSneak 0

# Vent speed
execute as @a at @s if block ~ ~1 ~ light_gray_terracotta run effect give @s speed 1 10 true