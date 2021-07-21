# Increase/decrease rotation
scoreboard players remove @e[tag=camera_rotate_anticlockwise] CameraRotation 1
scoreboard players add @e[tag=camera_rotate_clockwise] CameraRotation 1

# Loop rotation
scoreboard players set @e[scores={CameraRotation=-1}] CameraRotation 359
scoreboard players set @e[scores={CameraRotation=361}] CameraRotation 1

# Reverse anticlockwise rotation at 0
tag @e[tag=camera_rotate_anticlockwise,scores={CameraRotation=0}] add camera_rotate_clockwise
tag @e[tag=camera_rotate_anticlockwise,scores={CameraRotation=0}] remove camera_rotate_anticlockwise

# Rotation does not reverse for 360

# Reverse clockwise rotation at 180
tag @e[tag=camera_rotate_180,tag=camera_rotate_clockwise,scores={CameraRotation=180..}] add camera_rotate_anticlockwise
tag @e[tag=camera_rotate_180,tag=camera_rotate_clockwise,scores={CameraRotation=180..}] remove camera_rotate_clockwise

# Reverse clockwise rotation at 90
tag @e[tag=camera_rotate_90,tag=camera_rotate_clockwise,scores={CameraRotation=90..}] add camera_rotate_anticlockwise
tag @e[tag=camera_rotate_90,tag=camera_rotate_clockwise,scores={CameraRotation=90..}] remove camera_rotate_clockwise

# Rotation does not reverse for 0

# Rotate camera
execute as @e[tag=camera_rotate_clockwise] at @s run tp @s ~ ~ ~ ~1 ~
execute as @e[tag=camera_rotate_anticlockwise] at @s run tp @s ~ ~ ~ ~-1 ~