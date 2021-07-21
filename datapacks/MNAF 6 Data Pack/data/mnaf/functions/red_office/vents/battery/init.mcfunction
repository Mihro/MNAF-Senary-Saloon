scoreboard objectives add VentBattery dummy
function mnaf:red_office/vents/battery/reset
setblock -33 6 -286 minecraft:warped_button[face=wall,facing=north,powered=false]
setblock -33 6 -291 minecraft:warped_button[face=wall,facing=south,powered=false]
execute positioned -34 6 -285 unless entity @e[tag=vent,distance=..0.5] run function mnaf:vent/setup/setup
execute positioned -34 6 -292 unless entity @e[tag=vent,distance=..0.5] run function mnaf:vent/setup/setup
execute positioned -34 6 -285 run tag @e[tag=vent,distance=..0.5] add red_office_vent
execute positioned -34 6 -292 run tag @e[tag=vent,distance=..0.5] add red_office_vent
execute positioned -34 6 -285 run tag @e[tag=vent,distance=..0.5] add red_office_vent_left
execute positioned -34 6 -292 run tag @e[tag=vent,distance=..0.5] add red_office_vent_right
