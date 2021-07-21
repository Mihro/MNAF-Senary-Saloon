function mnaf:vent/setup/find_iron_trapdoor
execute if entity @s[tag=vent_not_found] run function mnaf:vent/setup/place_iron_trapdoor
tag @s remove vent_not_found

tp @s[tag=vent_entrance_east] ~ ~ ~ 270 0
tp @s[tag=vent_entrance_west] ~ ~ ~ 90 0
tp @s[tag=vent_entrance_south] ~ ~ ~ 0 0
tp @s[tag=vent_entrance_north] ~ ~ ~ 180 0