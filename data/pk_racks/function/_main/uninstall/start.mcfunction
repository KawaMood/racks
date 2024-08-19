#> pk_racks:_main/uninstall/start

tag @s add pk.racks.uninstaller
tellraw @s [{"text": "Starting ","color": "gray"},{"text": "KawaMood's Racks","color": "aqua","bold": true},{"text": " uninstallation...","color": "gray"}]
execute store result score $pk.racks.uninstall.racks.length pk.value run data get storage pk:racks database.blocks.racks
data modify storage pk:racks uninstall.racks set from storage pk:racks database.blocks.racks
execute if score $pk.racks.uninstall.racks.length pk.value matches 0 run function pk_racks:_main/uninstall/stop
execute if score $pk.racks.uninstall.racks.length pk.value matches 1.. run function pk_racks:_main/uninstall/1