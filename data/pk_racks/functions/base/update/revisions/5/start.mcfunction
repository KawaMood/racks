#> pk_racks:base/update/revisions/5/start

# Add versioning to the custom blocks
data modify storage pk.racks:data Blocks.Racks[{}].Version set value 5

# Update Racks dimension data (vanilla dimensions)
execute if data storage pk.racks:data Blocks.Racks[{Dimension:{id:-1}}] run data modify storage pk.racks:data Blocks.Racks[{Dimension:{id:-1}}].Dimension set value "minecraft:the_nether"
execute if data storage pk.racks:data Blocks.Racks[{Dimension:{id:0}}] run data modify storage pk.racks:data Blocks.Racks[{Dimension:{id:0}}].Dimension set value "minecraft:overworld"
execute if data storage pk.racks:data Blocks.Racks[{Dimension:{id:1}}] run data modify storage pk.racks:data Blocks.Racks[{Dimension:{id:1}}].Dimension set value "minecraft:the_end"

# Uninstall the dimension marker package
execute as @e[type=marker,tag=pk.dimension.marker] at @s run function pk_racks:base/update/revisions/5/marker_remove
scoreboard objectives remove pk.dimension.id

# Forceload the chunk in overworld
execute in minecraft:overworld run forceload add -30000000 1600