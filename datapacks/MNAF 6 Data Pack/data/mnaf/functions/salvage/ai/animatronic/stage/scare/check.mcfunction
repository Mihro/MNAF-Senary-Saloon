# Run by: active salvage animatronic at stage 5
#say AI > Scare > Check
# Tag for reset if player not near desk
execute at @e[tag=red_desk_frame,sort=nearest,limit=1] unless entity @a[tag=red_guard,distance=..5] run tag @s add salvage_ai_scare_failed
#execute at @e[tag=red_desk_frame,sort=nearest,limit=1] unless entity @a[tag=red_guard,distance=..5] run say Not at desk

# Tag for reset if nearest vent locked
execute as @s[tag=bonnie] if entity @e[tag=red_office_vent_left,tag=vent_locked] run tag @s add salvage_ai_scare_failed
execute as @s[tag=chica ] if entity @e[tag=red_office_vent_left,tag=vent_locked] run tag @s add salvage_ai_scare_failed
execute as @s[tag=freddy] if entity @e[tag=red_office_vent_right,tag=vent_locked] run tag @s add salvage_ai_scare_failed
execute as @s[tag=foxy  ] if entity @e[tag=red_office_vent_right,tag=vent_locked] run tag @s add salvage_ai_scare_failed

# Tag for reset if player is being scared
execute if entity @e[tag=scare_queued] run tag @s add salvage_ai_scare_failed
#execute if entity @e[tag=scare_queued] run say Scare already queued
execute if entity @e[tag=scare_running] run tag @s add salvage_ai_scare_failed
#execute if entity @e[tag=scare_running] run say Scare already running

execute if entity @s[tag=salvage_ai_scare_failed] run function mnaf:salvage/ai/animatronic/stage/reset
execute if entity @s[tag=!salvage_ai_scare_failed] run tag @s add scare_queued
#execute if entity @s[tag=salvage_ai_scare_failed] run say Scare failed
#execute if entity @s[tag=!salvage_ai_scare_failed] run say Scare queued

tag @e[tag=salvage_ai_scare_failed] remove salvage_ai_scare_failed