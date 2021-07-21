# Toggle cctv edit mode
tag @p[tag=!cctv_edit_mode] add cctv_edit_toggle_temp
tag @p[tag=cctv_edit_mode] remove cctv_edit_mode
tag @p[tag=cctv_edit_toggle_temp] add cctv_edit_mode
tag @p[tag=cctv_edit_toggle_temp] remove cctv_edit_toggle_temp