# Player: invisibility, team join
execute if entity @s[type=player] run effect give @s invisibility 1000000 0 true
execute if entity @s[type=player] run effect give @s saturation 1000000 10 true
execute if entity @s[type=player] run team join Animatronic @s

# Armorstands: set data
execute if entity @s[type=armor_stand] run data merge entity @s {CustomName:'"Glitchtrap"',DisabledSlots:4144896,Invisible:1b,Invulnerable:1b,Marker:1b,NoBasePlate:1b,NoGravity:1b,ShowArms:0b,Tags:["animatronic","glitchtrap"]}

# Head
replaceitem entity @s armor.head netherite_hoe{CustomModelData:56}

# Left Arm
replaceitem entity @s weapon.mainhand netherite_hoe{CustomModelData:7}

# Right Arm
replaceitem entity @s weapon.offhand netherite_hoe{CustomModelData:7}

# Chest
replaceitem entity @s armor.chest chainmail_chestplate{display:{Name:'"Glitchtrap"'}}

# Legs
replaceitem entity @s armor.legs chainmail_leggings{display:{Name:'"Glitchtrap"'}}

# Feet
replaceitem entity @s armor.feet chainmail_boots{display:{Name:'"Glitchtrap"'}}