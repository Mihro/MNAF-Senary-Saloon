# Player: invisibility, team join
execute if entity @s[type=player] run effect give @s invisibility 1000000 0 true
execute if entity @s[type=player] run effect give @s saturation 1000000 10 true
execute if entity @s[type=player] run team join Animatronic @s

# Armorstands: set data
execute if entity @s[type=armor_stand] run data merge entity @s {CustomName:'"Circus Baby"',DisabledSlots:4144896,Invisible:1b,Invulnerable:1b,Marker:1b,NoBasePlate:1b,NoGravity:1b,ShowArms:0b,Tags:["animatronic","circus_baby"]}

# Head
replaceitem entity @s armor.head shulker_box

# Left Arm
replaceitem entity @s weapon.mainhand netherite_hoe{CustomModelData:5}

# Right Arm
replaceitem entity @s weapon.offhand netherite_hoe{CustomModelData:5}

# Chest
replaceitem entity @s armor.chest chainmail_chestplate{display:{Name:'"Circus Baby"'}}

# Legs
replaceitem entity @s armor.legs chainmail_leggings{display:{Name:'"Circus Baby"'}}

# Feet
replaceitem entity @s armor.feet chainmail_boots{display:{Name:'"Circus Baby"'}}