# Run by: as @e[tag=salvage,tag=ai,tag=animatronic,tag=active] at @s

# Tag operators
tag @s add seen_check_target
tag @a[tag=player] add seen_check_source

# Do check - returns tag=is_in_view
function mnaf:common/viewing/check_is_seen

# If not in view, then increase stage
execute if entity @s[tag=!is_in_view] run function mnaf:salvage/ai/animatronic/stage/increase