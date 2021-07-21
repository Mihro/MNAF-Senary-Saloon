scoreboard players operation ToID JumpToID = @s[tag=jump_from] JumpToID
execute as @e[tag=jump_to] if score @s JumpToID = ToID JumpToID run tag @s add jump_to_target

tag @e[tag=jump_from] remove jump_from
tag @e[tag=jump_to] remove jump_to
#scoreboard players reset * JumpToID