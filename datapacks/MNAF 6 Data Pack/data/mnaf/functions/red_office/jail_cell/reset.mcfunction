schedule clear mnaf:red_office/jail_cell/open
schedule clear mnaf:red_office/jail_cell/reset

setblock -27 7 -285 air
setblock -27 7 -285 minecraft:command_block[facing=south]{Command:"function mnaf:red_office/jail_cell/trigger"}

playsound minecraft:block.lever.click block @a -28 7 -286 1 0.1
setblock -28 7 -286 air replace
setblock -28 7 -286 lever[face=wall,facing=west,powered=false] replace