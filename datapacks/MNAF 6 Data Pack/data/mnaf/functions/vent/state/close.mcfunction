execute if entity @s[tag=vent_entrance_east] run setblock ~1 ~ ~ iron_trapdoor[facing=east,half=top,open=true]
execute if entity @s[tag=vent_entrance_west] run setblock ~-1 ~ ~ iron_trapdoor[facing=west,half=top,open=true]
execute if entity @s[tag=vent_entrance_south] run setblock ~ ~ ~1 iron_trapdoor[facing=south,half=top,open=true]
execute if entity @s[tag=vent_entrance_north] run setblock ~ ~ ~-1 iron_trapdoor[facing=north,half=top,open=true]