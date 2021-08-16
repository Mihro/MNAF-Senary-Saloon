# If label pairing requested
execute as @a[scores={PairingTrigger=1}] run function mnaf:cctv/common/pairing/start_pairing

# If camera pairing attempted
execute as @a[tag=cctv_pairing_player,scores={UseCarrotStick=1..}] run function mnaf:cctv/common/pairing/attempt_pairing

# Unlink camera if camera deleted
#execute as @e[tag=monitor_label,tag=cctv_paired] run function mnaf:cctv/common/unpairing/auto_unpair

# Player spectating camera loop
execute as @a[tag=cctv_spectating] run function mnaf:cctv/common/viewing/spectate_loop
