# Copy marker's NBT
data modify entity @s Pose set from entity @e[tag=salvage,tag=ai,tag=marker,sort=nearest,limit=1] Pose
data modify entity @s Rotation set from entity @e[tag=salvage,tag=ai,tag=marker,sort=nearest,limit=1] Rotation

# Move to marker
tp @s ~ ~ ~ ~ ~