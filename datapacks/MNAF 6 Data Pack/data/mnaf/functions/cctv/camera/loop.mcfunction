# Rotate cameras if cameras exist
execute if entity @e[tag=camera] run function mnaf:cctv/camera/rotate_cycle

# If camera placed
execute as @e[tag=camera_spawn] at @s run function mnaf:cctv/camera/place
