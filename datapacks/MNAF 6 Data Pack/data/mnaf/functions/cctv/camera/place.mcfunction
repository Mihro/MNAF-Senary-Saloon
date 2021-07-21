summon armor_stand ~ ~ ~ {Marker:1b,NoGravity:1b,Invisible:1b,NoBasePlate:1b,Rotation:[0f,30f],Tags:["cctv","camera","unset_camera"],ArmorItems:[{},{},{},{id:"minecraft:netherite_hoe",Count:1,Unbreakable:1,tag:{CustomModelData:1001}}],DisabledSlots:4144896}
execute as @e[tag=unset_camera] at @s if entity @e[tag=camera,tag=!unset_camera,dy=100] run kill @s
execute as @e[tag=unset_camera] at @s run function mnaf:cctv/camera/setup

kill @s