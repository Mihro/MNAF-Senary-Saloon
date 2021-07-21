### Run by player
summon area_effect_cloud ~ ~ ~ {Duration:2147483647,Tags:["player_previous_pos_marker","spectate_id_unset"]}
scoreboard players operation @e[tag=player_previous_pos_marker,tag=spectate_id_unset,limit=1] SpectateID = @s SpectateID
execute at @s run tp @e[tag=player_previous_pos_marker,tag=spectate_id_unset] ~ ~ ~ ~ ~
tag @e[tag=spectate_id_unset] remove spectate_id_unset