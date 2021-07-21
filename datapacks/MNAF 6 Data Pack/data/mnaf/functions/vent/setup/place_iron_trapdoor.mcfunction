execute positioned ~1 ~1 ~ if block ~ ~ ~ air run setblock ~ ~-1 ~ iron_trapdoor[facing=east,half=top,open=true]
execute positioned ~-1 ~1 ~ if block ~ ~ ~ air run setblock ~ ~-1 ~ iron_trapdoor[facing=west,half=top,open=true]
execute positioned ~ ~1 ~1 if block ~ ~ ~ air run setblock ~ ~-1 ~ iron_trapdoor[facing=south,half=top,open=true]
execute positioned ~ ~1 ~-1 if block ~ ~ ~ air run setblock ~ ~-1 ~ iron_trapdoor[facing=north,half=top,open=true]

function mnaf:vent/setup/find_iron_trapdoor