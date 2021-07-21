execute if score RedPower GuardDoor matches 0.. if score RedTimer GuardDoor matches 0.. run scoreboard players remove RedTimer GuardDoor 1
execute if score RedPower GuardDoor matches 0.. if score RedTimer GuardDoor matches 0 run scoreboard players remove RedPower GuardDoor 1
execute if score RedTimer GuardDoor matches 0 as @e[tag=red_guard_door,tag=guard_door_button_marker] at @s run function mnaf:red_office/guard_door/red/display_power
execute if score RedTimer GuardDoor matches 0 run scoreboard players operation RedTimer GuardDoor = PercentTime GuardDoor

execute if score RedPower GuardDoor matches 0 as @e[tag=red_guard_door,tag=guard_door] run function mnaf:red_office/guard_door/common/door/open