# Run by: as @e[tag=salvage,tag=ai,tag=animatronic,tag=active] at @s not in view

# Add one to score
scoreboard players add @s[scores={ShedStage=..4}] ShedStage 1

# Find targets for moving to next stage (every stage marker with the same stage score)
function mnaf:salvage/ai/animatronic/stage/find_move_to_targets