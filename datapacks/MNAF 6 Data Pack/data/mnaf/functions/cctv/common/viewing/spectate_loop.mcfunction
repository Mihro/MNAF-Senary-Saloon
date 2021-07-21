### Run as player

# Give effects
effect give @s levitation 1 255 true
effect give @s invisibility 1 255 true
effect give @s slowness 1 6 true

# Teleport player
execute at @s at @e[tag=camera,tag=cctv_paired,sort=nearest,limit=1] run tp @s ~ ~ ~ ~ ~

# Static display
#execute unless entity @s[nbt={Inventory:[{id:"minecraft:netherite_hoe",tag:{CustomModelData:129},Slot:-106b}]}] run clear @s netherite_hoe{CustomModelData:129}
clear @s netherite_hoe{CustomModelData:129}
execute unless entity @s[nbt={Inventory:[{id:"minecraft:netherite_hoe",tag:{CustomModelData:129},Slot:-106b}]}] run replaceitem entity @s weapon.offhand netherite_hoe{CustomModelData:129}

# Sneak to exit
execute if entity @s[scores={CameraExitSneak=1..}] run function mnaf:cctv/common/viewing/return_player
scoreboard players reset @a[scores={CameraExitSneak=1..}] CameraExitSneak