# decrease percent
scoreboard players remove Percent VentBattery 1
# display percent
execute positioned -33.0 6.5 -288.0 as @a[distance=..7] run function mnaf:red_office/vents/battery/display
# if percent = 0, unlock vents
execute if score Percent VentBattery matches 0 run tag @e[tag=red_office_vent] remove vent_locked
# reset timer
scoreboard players operation Timer VentBattery = PercentDuration VentBattery
