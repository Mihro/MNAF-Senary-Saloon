# Run by: as @e[tag=guard_door,tag=door] at @s

# Lowering
execute positioned ~ ~-1 ~ unless block ~ ~ ~ #mnaf:guard_door_block run tag @s remove lower
execute positioned ~ ~-1 ~ unless block ~ ~ ~ #mnaf:guard_door_block run tag @s add closed
execute positioned ~ ~-1 ~ run fill ^ ^ ^ ^-1 ^ ^ barrier replace air
tp @s[tag=lower] ~ ~-0.3 ~