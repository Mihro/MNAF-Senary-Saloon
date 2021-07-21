### Run by player

# Reset 'remote' item
scoreboard players reset @s UseCarrotStick
clear @s minecraft:carrot_on_a_stick

# Player attempting pairing
tellraw @s "Attempting pairing."

# Send ray out for pairing a camera
kill @e[tag=camera_pairing_ray]
execute as @s at @s anchored feet positioned ^ ^ ^0.5 run function mnaf:cctv/common/pairing/ray

tellraw @s[tag=pairing_successful ] "Pairing successful.\n"
tellraw @s[tag=!pairing_successful] "Pairing unsuccessful.\n"
tag @a[tag=pairing_successful] remove pairing_successful

tag @e[tag=cctv_pairing_label] remove cctv_pairing_label

scoreboard players enable @s PairingTrigger