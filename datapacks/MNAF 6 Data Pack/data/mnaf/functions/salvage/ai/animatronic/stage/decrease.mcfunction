# Run by: @e[tag=salvage_animatronic]

# Add one to score
scoreboard players remove @s[scores={ShedStage=2..}] ShedStage 1

# Find targets for moving to next stage
function mnaf:salvage/ai/animatronic/stage/find_move_to_targets