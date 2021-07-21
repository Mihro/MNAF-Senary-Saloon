### Run by player

scoreboard players operation @s SpectateID = @e[tag=label_interacted] CctvID

# Place a marker down for the player to return to
function mnaf:cctv/common/viewing/place_marker

# Prep jump
tag @s add jump_from
tag @e[tag=camera,tag=cctv_paired] add jump_to
scoreboard players operation @s JumpToID = @s SpectateID
execute as @e[tag=jump_to] run scoreboard players operation @s JumpToID = @s CctvID

# Jump to target
function mnaf:cctv/common/jump_to/jump_to
tag @e[tag=jump_to_target] add cctv_spectate_to

# Move player to camera
execute at @e[tag=cctv_spectate_to] run tp @s ~ ~ ~ ~ ~
tag @s add cctv_spectating
execute at @s run playsound mnaf:cctv.camera.enter player @s
execute at @s if entity @e[tag=jump_to_target,tag=camera_rotate_clockwise,    distance=..1] run function mnaf:cctv/common/viewing/turning_sound
execute at @s if entity @e[tag=jump_to_target,tag=camera_rotate_anticlockwise,distance=..1] run function mnaf:cctv/common/viewing/turning_sound

# Reset tags
scoreboard players set @s CameraExitSneak 0
tag @e[tag=cctv_spectate_to] remove cctv_spectate_to
tag @e[tag=jump_to_target] remove jump_to_target

title @s actionbar {"text":"Shift to exit.","color":"white"}