tag @s[tag=open_vent] remove open_vent

execute if entity @a[distance=..1.3,scores={VentSneak=1..}] run tag @s add open_vent
execute at @a[distance=..1] if block ~ ~ ~ iron_trapdoor[open=false] run tag @s add open_vent
execute at @a[distance=..0.3] if block ~ ~1 ~ #mnaf:vent_block run tag @s add open_vent