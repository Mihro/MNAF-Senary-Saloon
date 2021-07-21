# Run by: @e[tag=salvage_ai_marker] <@s:SalvageAIMarker = target:SalvageAIMarker>
# Run by every marker with the same stage score as animatronic, this file narrows it down to each type

# If salvage bonnie is changing stage, then at marker, as animatronic, run move_to
#execute if entity @e[tag=changing_stage,tag=salvage_bonnie] at @s[tag=salvage_bonnie_marker] as @e[tag=salvage_animatronic,tag=salvage_bonnie,tag=changing_stage] run function mnaf:salvage/ai/animatronic/bonnie/move_to_marker
# Freddy
# Foxy