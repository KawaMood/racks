#> pk_racks:tools/upgrade/from_v2/start

# Check if an update is in progress
execute if score $updating pk.value matches 1 run tellraw @s {"text": "Error: Another update is already in progress.","color": "red"}
execute if score $updating pk.value matches 1 run return fail

# Mark updater
tag @s add pk.update_from_v2

# Starting the process
tellraw @s [{"text": "Starting to update all features from ","color": "gray"},{"text": "KawaMood's Racks (V.2)","color": "aqua","bold": true},{"text": "...","color": "gray"}]
scoreboard players set $updating pk.value 1
data remove storage pk:common update

# Update racks
data modify storage pk:common update.blocks set from storage pk.racks:data Blocks.Racks
execute unless data storage pk:common update.blocks[-1] run function pk_racks:tools/upgrade/from_v2/stop
execute if data storage pk:common update.blocks[-1] run function pk_racks:tools/upgrade/from_v2/blocks/1