# Player: invisibility, team join
execute if entity @s[type=player] run effect give @s invisibility 1000000 0 true
execute if entity @s[type=player] run effect give @s saturation 1000000 10 true
execute if entity @s[type=player] run team join Animatronic @s

# Armorstands: set data
execute if entity @s[type=armor_stand] run data merge entity @s {CustomName:'"Sheriff Vinnie"',DisabledSlots:4144896,Invisible:1b,Invulnerable:1b,Marker:1b,NoBasePlate:1b,NoGravity:1b,ShowArms:0b,Tags:["animatronic","sheriff_vinnie"]}

# Head
replaceitem entity @s armor.head netherite_hoe{CustomModelData:62}

# Left Arm
replaceitem entity @s weapon.mainhand netherite_hoe{CustomModelData:16}

# Right Arm
replaceitem entity @s weapon.offhand netherite_hoe{CustomModelData:16}

# Chest
replaceitem entity @s armor.chest chainmail_chestplate{display:{Name:'"Sheriff Vinnie"'}}

# Legs
replaceitem entity @s armor.legs chainmail_leggings{display:{Name:'"Sheriff Vinnie"'}}

# Feet
replaceitem entity @s armor.feet chainmail_boots{display:{Name:'"Sheriff Vinnie"'}}