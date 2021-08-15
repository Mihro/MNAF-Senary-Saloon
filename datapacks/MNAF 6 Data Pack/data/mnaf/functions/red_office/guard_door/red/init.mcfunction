kill @e[tag=guard_door,tag=red]

# Model/door
summon armor_stand -37.5 9.7 -288.0 {Marker:1b,NoGravity:1b,Invisible:1b,Rotation:[90f,0f],ArmorItems:[{},{},{},{id:"netherite_hoe",Count:1b,tag:{CustomModelData:147}}],Tags:["guard_door","red","door","opened"]}
# Button interact
summon villager -34 5 -288.7 {Invulnerable:1b,NoAI:1b,Health:20f,NoGravity:1b,Silent:1b,Rotation:[0f,0f],Tags:["guard_door","red","interact_box"],ActiveEffects:[{Id:14,Duration:2147483647,ShowParticles:0b},{Id:10,Duration:2147483647,Amplifier:255,ShowParticles:0b}]}
# Button marker
summon area_effect_cloud -33.5 6.6 -288.7 {Duration:2147483647,Rotation:[0f,-90f],Tags:["guard_door","red","button_marker"]}

function mnaf:red_office/guard_door/common/reset_power