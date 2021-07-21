# Player
execute if entity @s[type=player] run effect clear @s invisibility
execute if entity @s[type=player] run team leave @s
execute if entity @s[type=player] run clear @s

# Armorstand
execute if entity @s[type=armor_stand] run data merge entity @s {ArmorItems:[],HandItems:[]}
execute if entity @s[type=armor_stand] run data remove entity @s CustomName
execute if entity @s[type=armor_stand] run data merge entity @s {DisabledSlots:0,Invisible:0b,Invulnerable:0b,Marker:0b,NoBasePlate:0b}
execute if entity @s[type=armor_stand] run function mnaf:common/dress/armorstand_remove_tags
