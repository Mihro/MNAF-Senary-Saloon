# Remove nearby freddys
kill @e[tag=salvage,tag=animatronic,tag=freddy,distance=..3]

# Summon freddy armorstand
summon armor_stand ~ ~ ~ {Rotation:[180f,0f],NoGravity:1b,Invulnerable:1b,Invisible:1b,ShowArms:1b,NoBasePlate:1b,Tags:["salvage","animatronic","freddy","unset"],CustomName:'"Freddy"',DisabledSlots:4144896}

# If player is summoning, then rotate to face the player
execute if entity @s[type=player] at @e[tag=salvage,tag=animatronic,tag=unset] rotated as @s run tp @e[tag=salvage,tag=animatronic,tag=unset] ~ ~ ~ ~180 0

# Dress armorstand as freddy
execute as @e[tag=salvage,tag=animatronic,tag=unset] run function mnaf:salvage/common/animatronic/dress/freddy

# Clear unset status
tag @e[tag=salvage,tag=animatronic,tag=unset] remove unset