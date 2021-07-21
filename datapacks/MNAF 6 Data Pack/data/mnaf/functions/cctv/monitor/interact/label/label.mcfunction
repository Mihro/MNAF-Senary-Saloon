### Run by player

tag @e[tag=monitor_label,sort=nearest,limit=1] add label_interacted

#execute as @e[tag=label_interacted] run say Interacted

execute as @s[tag=cctv_edit_mode ] as @e[tag=label_interacted] run function mnaf:cctv/monitor/interact/label/edit_mode/edit
execute as @s[tag=!cctv_edit_mode] at @e[tag=label_interacted] run function mnaf:cctv/monitor/interact/label/view_mode/view