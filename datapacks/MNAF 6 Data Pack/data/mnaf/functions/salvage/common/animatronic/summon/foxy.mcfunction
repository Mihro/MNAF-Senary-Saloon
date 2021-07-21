# Remove nearby foxys
kill @e[tag=salvage,tag=animatronic,tag=foxy,distance=..3]

# Summon foxy armorstand
summon armor_stand ~ ~ ~ {Rotation:[180f,0f],NoGravity:1b,Invulnerable:1b,Invisible:1b,ShowArms:1b,NoBasePlate:1b,Tags:["salvage","animatronic","foxy","unset"],CustomName:'"Foxy"'}

# If player is summoning, then rotate to face the player
execute if entity @s[type=player] at @e[tag=salvage,tag=animatronic,tag=unset] rotated as @s run tp @e[tag=salvage,tag=animatronic,tag=unset] ~ ~ ~ ~180 0

# Dress armorstand as foxy
execute as @e[tag=salvage,tag=animatronic,tag=unset] run function mnaf:salvage/common/animatronic/dress/foxy

# Clear unset status
tag @e[tag=salvage,tag=animatronic,tag=unset] remove unset