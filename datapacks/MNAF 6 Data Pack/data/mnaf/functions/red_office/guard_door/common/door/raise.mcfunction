# Run by: as @e[tag=guard_door,tag=door] at @s

# Raising
execute positioned ~ ~-1 ~ unless block ~ ~0.5 ~ #mnaf:guard_door_block run tag @s remove raise
execute positioned ~ ~-1 ~ unless block ~ ~0.5 ~ #mnaf:guard_door_block run tag @s add opened
execute positioned ~ ~-1 ~ run fill ^ ^ ^ ^-1 ^ ^ air replace barrier
tp @s[tag=raise] ~ ~0.3 ~