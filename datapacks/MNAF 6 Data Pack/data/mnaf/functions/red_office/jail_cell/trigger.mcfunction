# Remove trigger command block
setblock -27 7 -285 air

# Close cell
function mnaf:red_office/jail_cell/close

# Open cell
schedule function mnaf:red_office/jail_cell/open 15s

# Reset lever & cmd block trigger
schedule function mnaf:red_office/jail_cell/reset 30s