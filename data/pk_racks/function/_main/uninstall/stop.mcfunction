#> pk_racks:_main/uninstall/stop

# Reset uninstalling process score
scoreboard players set $uninstall pk.value 0

# Unmark player
tag @s remove pk.uninstall

# Clear the current data pack's specific scores and storage
function pk_racks:_main/uninstall/references/specific

# Clear all KawaMood's data packs scores and storage if no more KawaMood's data packs are installed
execute unless data storage pk:common installed_datapacks[{}] unless data storage pk.common:data Datapacks[{}] run function pk_racks:_main/uninstall/references/common

# Logs
tellraw @s [{text: "Uninstalled ",color: "yellow"},{text: "KawaMood's Racks ",color: "aqua",bold: true},{text: " successfully"},{text: "\nYou can now safely remove this data pack from the folder of your world",color: "yellow"}]