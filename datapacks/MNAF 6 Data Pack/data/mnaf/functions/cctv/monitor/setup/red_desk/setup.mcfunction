# Tag self
tag @s add red_desk_frame

# Kill old monitors
kill @e[tag=monitor]

# Remove pairings from cameras
tag @e[tag=camera,tag=cctv_paired] remove cctv_paired

# Summon labels
execute if entity @s[nbt={ItemRotation:0b}] facing ~ ~ ~1 run function mnaf:cctv/monitor/setup/red_desk/labels
execute if entity @s[nbt={ItemRotation:2b}] facing ~-1 ~ ~ run function mnaf:cctv/monitor/setup/red_desk/labels
execute if entity @s[nbt={ItemRotation:4b}] facing ~ ~ ~-1 run function mnaf:cctv/monitor/setup/red_desk/labels
execute if entity @s[nbt={ItemRotation:6b}] facing ~1 ~ ~ run function mnaf:cctv/monitor/setup/red_desk/labels