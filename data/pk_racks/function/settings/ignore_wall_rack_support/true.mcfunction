#> pk_racks:settings/ignore_wall_rack_support/true

# Cancel process if setting is already set on the attempted value
execute if score $pk.racks.settings.ignore_wall_rack_support pk.value matches 1 run tellraw @s [{"text":"Setting \"","color":"red"},{"text":"Ignore Wall Rack Support","color":"yellow"},{"text":"\" is already set to ","color":"red"},{"text":"true","color":"yellow"}]
execute unless score $pk.racks.settings.ignore_wall_rack_support pk.value matches 1 run tellraw @s [{"text":"Setting \"","color":"gray"},{"text":"Ignore Wall Rack Support","color":"yellow"},{"text":"\" has been set to ","color":"gray"},{"text":"true","color":"yellow"}]

# Update the setting's value
scoreboard players set $pk.racks.settings.ignore_wall_rack_support pk.value 1

# Start the check support process
schedule clear pk_racks:blocks/rack/behavior/wall/scheduled_check_support