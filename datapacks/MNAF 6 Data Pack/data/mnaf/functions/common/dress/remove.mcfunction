# Player
## Effect
execute if entity @s[type=player] run effect clear @s invisibility
## Team
execute if entity @s[type=player] run team leave @s
## Items
execute if entity @s[type=player] run clear @s #mnaf:costume_items
#execute if entity @s[type=player] run function mnaf:admin/give/help_book

# Armorstand
execute if entity @s[type=armor_stand] run data merge entity @s {ArmorItems:[],HandItems:[]}
execute if entity @s[type=armor_stand] run data remove entity @s CustomName
execute if entity @s[type=armor_stand] run data merge entity @s {DisabledSlots:0,Invisible:0b,Invulnerable:0b,Marker:0b,NoBasePlate:0b}
execute if entity @s[type=armor_stand] run function mnaf:common/dress/armorstand_remove_tags
