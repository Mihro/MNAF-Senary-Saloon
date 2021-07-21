# Run by squid placed from spawn egg

kill @e[tag=vent,distance=..1]
execute unless block ~ ~1 ~ air run summon area_effect_cloud ~ ~ ~ {Duration:2147483647,Tags:["vent","vent_not_found"]}

execute as @e[tag=vent_not_found] at @s unless block ~ ~1 ~ air run function mnaf:vent/setup/find_vent_entrance

# Kill placement squid
kill @s