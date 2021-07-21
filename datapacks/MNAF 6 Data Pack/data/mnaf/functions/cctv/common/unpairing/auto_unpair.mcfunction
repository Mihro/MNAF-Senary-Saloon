scoreboard players set Unpair CctvIDTemp 1
scoreboard players operation CurrentID CctvIDTemp = @s CctvID
execute as @e[tag=camera,tag=cctv_paired] if score @s CctvID = CurrentID CctvIDTemp run scoreboard players set Unpair CctvIDTemp 0
execute if score Unpair CctvIDTemp matches 1 run function mnaf:cctv/common/unpairing/unpair