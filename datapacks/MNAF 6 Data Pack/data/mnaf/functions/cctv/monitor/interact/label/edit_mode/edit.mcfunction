### Run by label [tag=label_interacted]

execute as @s[tag=cctv_paired ] at @s run function mnaf:cctv/monitor/interact/label/edit_mode/paired
execute as @s[tag=!cctv_paired] at @s run function mnaf:cctv/monitor/interact/label/edit_mode/not_paired