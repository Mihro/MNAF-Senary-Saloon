# Run by: object that wants to check if it's seen

# Reset is_in_view tag
tag @e[tag=is_in_view] remove is_in_view

# Do fov & can_see check
execute as @e[tag=seen_check_target] at @e[tag=seen_check_source] anchored feet facing entity @s feet positioned ^ ^ ^1 rotated as @e[tag=seen_check_source,sort=nearest,limit=1] positioned ^ ^ ^-1 at @e[tag=seen_check_source,distance=..0.9,sort=nearest,limit=1] anchored eyes facing entity @s eyes positioned ^ ^ ^ run function mnaf:common/viewing/marching_view_ray

# Debug
#execute as @s[tag=is_in_view] run say Is in view
#execute as @s[tag=!is_in_view] run say Is NOT in view

# Reset tags
tag @e[tag=seen_check_source] remove seen_check_source
tag @e[tag=seen_check_target] remove seen_check_target