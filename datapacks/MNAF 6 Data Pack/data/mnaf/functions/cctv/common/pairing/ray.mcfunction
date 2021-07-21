### Run by player

execute if entity @s[tag=cctv_pairing_player] as @e[tag=camera,tag=cctv_paired, distance=..0.5] run function mnaf:cctv/common/pairing/camera_already_paired
execute if entity @s[tag=cctv_pairing_player] as @e[tag=camera,tag=!cctv_paired,distance=..0.5] run function mnaf:cctv/common/pairing/pair_camera

# Debug
#summon area_effect_cloud ~ ~ ~ {Duration:100,Rotation:[0f,-90f],Tags:["camera_pairing_ray"]}

execute if entity @s[tag=cctv_pairing_player,distance=..8] positioned ^ ^ ^0.2 run function mnaf:cctv/common/pairing/ray