# Run by: as @e[tag=guard_door,tag=door,tag=red]

tag @s[tag=opened] add toggle_close
tag @s[tag=closed] add toggle_open

execute if entity @s[tag=toggle_open] run function mnaf:red_office/guard_door/common/door/open
execute if entity @s[tag=toggle_close] run function mnaf:red_office/guard_door/common/door/close

tag @s[tag=toggle_open] remove toggle_open
tag @s[tag=toggle_close] remove toggle_close