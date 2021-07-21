### Run by player
say Start pairing
scoreboard players reset @s PairingTrigger

execute as @e[tag=label_interacted] run tellraw @a ["Pairing label: ",{"italic":true,"selector":"@s"},".\nRight-click a camera with the remote.\n"]
function mnaf:cctv/common/pairing/give_remote

# Add pairing tag to the player
tag @s add cctv_pairing_player
# Add pairing tag to the label
tag @e[tag=label_interacted] add cctv_pairing_label