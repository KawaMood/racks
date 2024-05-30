#> pk_racks:tools/upgrade/from_v2/stop

# Reset score
scoreboard players reset $updating pk.value

# Logs
tellraw @a[tag=pk.update_from_v2,limit=1] [{"text": "Updated all racks from ","color": "yellow"},{"text": "KawaMood's Racks (V.2)","color": "aqua","bold": true},{"text": " successfully."}]

# Unmark updater
tag @a[tag=pk.update_from_v2,limit=1] remove pk.update_from_v2