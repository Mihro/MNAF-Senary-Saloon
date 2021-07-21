# Jump player back to previous position
tag @s add jump_from
tag @e[tag=player_previous_pos_marker] add jump_to
scoreboard players operation @s JumpToID = @s SpectateID
execute as @e[tag=jump_to] run scoreboard players operation @s JumpToID = @s SpectateID
function mnaf:cctv/common/jump_to/jump_to
execute at @e[tag=jump_to_target] run tp @s ~ ~ ~ ~ ~
kill @e[tag=player_previous_pos_marker,tag=jump_to_target]
tag @e[tag=jump_to_target] remove jump_to_target

# Reset player
tag @s remove cctv_spectating
effect clear @s levitation
effect clear @s invisibility
effect clear @s slowness
replaceitem entity @s weapon.offhand air
title @s actionbar ""
# Reset camera turning sound
stopsound @s player
schedule clear mnaf:cctv/common/viewing/turning_sound