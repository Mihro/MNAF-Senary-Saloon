# Summon villager for interact hitbox
summon villager ^-0.5 ^ ^1.2 {Health:1f,Silent:1b,NoGravity:1b,NoAI:1b,DeathTime:19,Team:"NoPush",Tags:["cctv","monitor","monitor_interact"],ActiveEffects:[{Id:14,Duration:2147483647,ShowParticles:0b}]}
execute as @e[tag=monitor_interact,sort=nearest,limit=1] at @s run tp @s ~ ~ ~ ~-90 ~

# Labels 1.383
summon minecraft:area_effect_cloud ^-0.638 ^1.320 ^1.449 { Duration:2147483647,Rotation:[0f,-90f],Tags:["cctv","monitor","monitor_label"],CustomName:'"1"',  DurationOnUse: 1}
summon minecraft:area_effect_cloud ^-0.584 ^1.266 ^1.400 { Duration:2147483647,Rotation:[0f,-90f],Tags:["cctv","monitor","monitor_label"],CustomName:'"2A"', DurationOnUse: 2}
summon minecraft:area_effect_cloud ^-0.529 ^1.211 ^1.460 { Duration:2147483647,Rotation:[0f,-90f],Tags:["cctv","monitor","monitor_label"],CustomName:'"2B"', DurationOnUse: 3}
summon minecraft:area_effect_cloud ^-0.495 ^1.176 ^1.343 { Duration:2147483647,Rotation:[0f,-90f],Tags:["cctv","monitor","monitor_label"],CustomName:'"3"',  DurationOnUse: 4}
summon minecraft:area_effect_cloud ^-0.456 ^1.138 ^1.380 { Duration:2147483647,Rotation:[0f,-90f],Tags:["cctv","monitor","monitor_label"],CustomName:'"4"',  DurationOnUse: 5}
summon minecraft:area_effect_cloud ^-0.460 ^1.142 ^1.300 { Duration:2147483647,Rotation:[0f,-90f],Tags:["cctv","monitor","monitor_label"],CustomName:'"5"',  DurationOnUse: 6}
summon minecraft:area_effect_cloud ^-0.573 ^1.255 ^1.290 { Duration:2147483647,Rotation:[0f,-90f],Tags:["cctv","monitor","monitor_label"],CustomName:'"6"',  DurationOnUse: 7}
summon minecraft:area_effect_cloud ^-0.529 ^1.211 ^1.262 { Duration:2147483647,Rotation:[0f,-90f],Tags:["cctv","monitor","monitor_label"],CustomName:'"7"',  DurationOnUse: 8}
summon minecraft:area_effect_cloud ^-0.555 ^1.237 ^1.189 { Duration:2147483647,Rotation:[0f,-90f],Tags:["cctv","monitor","monitor_label"],CustomName:'"8"',  DurationOnUse: 9}
summon minecraft:area_effect_cloud ^-0.643 ^1.325 ^1.286 { Duration:2147483647,Rotation:[0f,-90f],Tags:["cctv","monitor","monitor_label"],CustomName:'"9"',  DurationOnUse:10}
summon minecraft:area_effect_cloud ^-0.643 ^1.325 ^1.038 { Duration:2147483647,Rotation:[0f,-90f],Tags:["cctv","monitor","monitor_label"],CustomName:'"10A"',DurationOnUse:11}
summon minecraft:area_effect_cloud ^-0.538 ^1.220 ^1.000 { Duration:2147483647,Rotation:[0f,-90f],Tags:["cctv","monitor","monitor_label"],CustomName:'"10B"',DurationOnUse:12}
summon minecraft:area_effect_cloud ^-0.468 ^1.150 ^1.123 { Duration:2147483647,Rotation:[0f,-90f],Tags:["cctv","monitor","monitor_label"],CustomName:'"10C"',DurationOnUse:13}
summon minecraft:area_effect_cloud ^-0.429 ^1.111 ^1.021 { Duration:2147483647,Rotation:[0f,-90f],Tags:["cctv","monitor","monitor_label"],CustomName:'"10D"',DurationOnUse:14}

# Save ID to score
execute as @e[tag=monitor_label] store result score @s CctvID run data get entity @s DurationOnUse