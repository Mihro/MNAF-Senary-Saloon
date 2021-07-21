# Tp camera up to ceiling. (max 7 blocks above)
execute at @s unless block ~ ~7 ~ air run tp @s ~ ~5.1 ~
execute at @s unless block ~ ~6 ~ air run tp @s ~ ~4.1 ~
execute at @s unless block ~ ~5 ~ air run tp @s ~ ~3.1 ~
execute at @s unless block ~ ~4 ~ air run tp @s ~ ~2.1 ~
execute at @s unless block ~ ~3 ~ air run tp @s ~ ~1.1 ~
execute at @s unless block ~ ~2 ~ air run tp @s ~ ~0.1 ~

# Tag camera to mark adjacent blocks at head height
execute at @s unless block ~1 ~ ~ air run tag @s add camera_wall_east
execute at @s unless block ~-1 ~ ~ air run tag @s add camera_wall_west
execute at @s unless block ~ ~ ~1 air run tag @s add camera_wall_south
execute at @s unless block ~ ~ ~-1 air run tag @s add camera_wall_north

# Rotate camera to starting orientation
execute at @s[tag=camera_wall_north] run tp @s ~ ~ ~ 270 ~
execute at @s[tag=camera_wall_east ] run tp @s ~ ~ ~ 0 ~
execute at @s[tag=camera_wall_south] run tp @s ~ ~ ~ 90 ~
execute at @s[tag=camera_wall_west ] run tp @s ~ ~ ~ 180 ~
execute at @s[tag=camera_wall_north,tag=camera_wall_west] run tp @s ~ ~ ~ 270 ~
# If between opposite walls, rotate to follow player's view direction
execute at @s[tag=camera_wall_north,tag=camera_wall_south] if entity @p[scores={PlaceCamera=1..},y_rotation=0..180 ] run tp @s ~ ~ ~ 90 ~
execute at @s[tag=camera_wall_north,tag=camera_wall_south] if entity @p[scores={PlaceCamera=1..},y_rotation=-180..0] run tp @s ~ ~ ~ 270 ~
execute at @s[tag=camera_wall_east,tag=camera_wall_west  ] if entity @p[scores={PlaceCamera=1..},y_rotation=-90..90] run tp @s ~ ~ ~ 0 ~
execute at @s[tag=camera_wall_east,tag=camera_wall_west  ] if entity @p[scores={PlaceCamera=1..},y_rotation=90..-90] run tp @s ~ ~ ~ 180 ~

# Tag camera with the rotation mode it needs to use, based on walls
tag @s[tag=!camera_wall_north,tag=!camera_wall_east,tag=!camera_wall_south,tag=!camera_wall_west] add camera_rotate_360
tag @s[tag=camera_wall_north, tag=!camera_wall_east,tag=!camera_wall_south,tag=!camera_wall_west] add camera_rotate_180
tag @s[tag=!camera_wall_north,tag=camera_wall_east, tag=!camera_wall_south,tag=!camera_wall_west] add camera_rotate_180
tag @s[tag=!camera_wall_north,tag=!camera_wall_east,tag=camera_wall_south, tag=!camera_wall_west] add camera_rotate_180
tag @s[tag=!camera_wall_north,tag=!camera_wall_east,tag=!camera_wall_south,tag=camera_wall_west ] add camera_rotate_180
tag @s[tag=camera_wall_north, tag=camera_wall_east, tag=!camera_wall_south,tag=!camera_wall_west] add camera_rotate_90
tag @s[tag=!camera_wall_north,tag=camera_wall_east, tag=camera_wall_south, tag=!camera_wall_west] add camera_rotate_90
tag @s[tag=!camera_wall_north,tag=!camera_wall_east,tag=camera_wall_south, tag=camera_wall_west ] add camera_rotate_90
tag @s[tag=camera_wall_north, tag=!camera_wall_east,tag=!camera_wall_south,tag=camera_wall_west ] add camera_rotate_90
tag @s[tag=!camera_wall_north,tag=camera_wall_east, tag=!camera_wall_south,tag=camera_wall_west ] add camera_rotate_0
tag @s[tag=camera_wall_north, tag=!camera_wall_east,tag=camera_wall_south, tag=!camera_wall_west] add camera_rotate_0
tag @s[tag=!camera_wall_north,tag=camera_wall_east, tag=camera_wall_south, tag=camera_wall_west ] add camera_rotate_0
tag @s[tag=camera_wall_north, tag=!camera_wall_east,tag=camera_wall_south, tag=camera_wall_west ] add camera_rotate_0
tag @s[tag=camera_wall_north, tag=camera_wall_east, tag=!camera_wall_south,tag=camera_wall_west ] add camera_rotate_0
tag @s[tag=camera_wall_north, tag=camera_wall_east, tag=camera_wall_south, tag=!camera_wall_west] add camera_rotate_0

# Tag camera with rotation direction
tag @s add camera_rotate_clockwise
tag @s[tag=camera_rotate_0] remove camera_rotate_clockwise

# Initialize camera rotation value
scoreboard players set @s CameraRotation 0

# Camera setup done
tag @s remove unset_camera