# Run by: @e[tag=salvage_animatronic]

# Reset to first stage
scoreboard players set @s ShedStage 1
scoreboard players operation @s ShedTimer = AIStageDuration ShedTimer

# Find targets to move to
function mnaf:salvage/ai/animatronic/stage/find_move_to_targets