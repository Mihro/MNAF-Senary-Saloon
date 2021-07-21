### Run by player

tellraw @a "Started pairing. Click a camera with the remote."

function mnaf:cctv/common/pairing/give_remote
tag @s add cctv_pairing
execute at @e[tag=label_last_clicked] run tag @e[tag=monitor_label,distance=..0.1] add label_pairing
