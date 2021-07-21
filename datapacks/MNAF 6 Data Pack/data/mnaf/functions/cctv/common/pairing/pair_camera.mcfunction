### Run by camera

# Tell player camera/label id that is being paired
tellraw @p[tag=cctv_pairing_player] ["Pairing camera: ",{"italic":true,"selector":"@e[tag=label_interacted]"}]

# Copy label's id
scoreboard players operation @s CctvID = @e[tag=cctv_pairing_label] CctvID

# Mark camera and label as paired
tag @s add cctv_paired
tag @e[tag=cctv_pairing_label] add cctv_paired

# Tag player to finish pairing
tag @p[tag=cctv_pairing_player] add pairing_successful
tag @p[tag=cctv_pairing_player] remove cctv_pairing_player