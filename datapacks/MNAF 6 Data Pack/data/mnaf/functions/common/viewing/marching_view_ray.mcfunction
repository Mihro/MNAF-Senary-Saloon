# Run: as @e[tag=seen_check_target] at @e[tag=seen_check_source]

execute positioned ~ ~-1.68 ~ if entity @s[distance=..1] run tag @s add is_in_view
summon area_effect_cloud ~ ~ ~ {Duration:5}
execute unless entity @s[tag=is_in_view] positioned ^ ^ ^0.5 if predicate mnaf:los_enabled_block run function mnaf:common/viewing/marching_view_ray