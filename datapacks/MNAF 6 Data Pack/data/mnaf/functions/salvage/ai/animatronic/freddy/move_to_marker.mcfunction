# Run by: @e[tag=salvage_animatronic,tag=salvage_freddy]

function mnaf:salvage/ai/animatronic/move_to_marker

# Do marker-specific operations
execute if score @s ShedStage matches 1 run function mnaf:salvage/ai/animatronic/freddy/move_to_marker/stage_1
execute if score @s ShedStage matches 2 run function mnaf:salvage/ai/animatronic/freddy/move_to_marker/stage_2
execute if score @s ShedStage matches 3 run function mnaf:salvage/ai/animatronic/freddy/move_to_marker/stage_3
execute if score @s ShedStage matches 4 run function mnaf:salvage/ai/animatronic/freddy/move_to_marker/stage_4
execute if score @s ShedStage matches 5 run function mnaf:salvage/ai/animatronic/freddy/move_to_marker/stage_5