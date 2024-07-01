#> pk_racks:_main/load
#
# Main load

# ―――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――― 
# Storage:
# ――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――
# Define storage
#   pk:common: Used within all KawaMood data packs to store public data and temp manipulation
#   pk:racks: Used to store private data for this data pack
#declare storage pk:common
#declare storage pk:racks

# Initialize common storages (if needed)
execute unless data storage pk:common installed_datapacks[{}] run data modify storage pk:common installed_datapacks set value []
execute unless data storage pk:common database.players[{}] run data modify storage pk:common database.players set value []
#   Add current data pack into the data packs storage (if needed)
execute unless data storage pk:common installed_datapacks[{id:"racks"}] run data modify storage pk:common installed_datapacks append value {name:"Racks",id:"racks"}

# Initialize specific storage (if needed)
execute unless data storage pk:racks database.blocks.racks[{}] run data modify storage pk:racks database.blocks.racks set value []

# ―――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――― 
# Scores:
# ――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――
# Define public objectives that are common to each KawaMood data pack:
#   pk.temp only concerns temp values that can be cleared at any time without risks.
#   pk.value is used for fixed values and variable settings, and won't be cleared on uninstallation until there is no KawaMood data pack anymore.
scoreboard objectives add pk.temp dummy
scoreboard objectives add pk.value dummy
scoreboard objectives add pk.custom_block.component.id dummy
scoreboard objectives add pk.custom_block.facing dummy

# Define private objectives
#   Used to store gametime to some entities to know when they were loaded last time
scoreboard objectives add pk.racks.gametime dummy

# ―――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――― 
# Settings:
# ――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――
# Ignore Wall Rack Support (default: unset)
execute unless score $pk.racks.settings.ignore_wall_rack_support pk.value matches 1.. run schedule function pk_racks:blocks/rack/behavior/wall/scheduled_check_support 10t replace

# ―――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――― 
# Updates:
# ――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――
#   Define the data pack's version and run (an) updating process(es) (if needed)
function pk_racks:_main/update/_run

# ―――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――― 
# Logs:
# ――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――
execute unless score $logs.load pk.value matches ..0 run tellraw @a [{"text": "Loaded ","color": "yellow"},{"text":"KawaMood's ","color": "aqua", "bold": true},{"nbt":"installed_datapacks[{id:\"racks\"}].name", "storage": "pk:common","color": "aqua", "bold": true},{"text": " (V.","color": "aqua"},{"nbt":"installed_datapacks[{id:\"racks\"}].version", "storage": "pk:common","color": "aqua"},{"text": ")","color": "aqua"},{"text": " successfully"}]