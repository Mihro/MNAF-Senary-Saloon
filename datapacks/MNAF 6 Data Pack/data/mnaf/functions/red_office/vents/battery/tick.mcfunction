# if percent > 0, remove timer, for each locked vent
execute if score Percent VentBattery matches 1.. as @e[tag=vent,tag=vent_locked] run scoreboard players remove Timer VentBattery 1
# if timer = 0, run percent
execute if score Timer VentBattery matches ..0 run function mnaf:red_office/vents/battery/percent
