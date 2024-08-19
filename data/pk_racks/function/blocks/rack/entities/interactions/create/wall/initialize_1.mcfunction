#> pk_racks:blocks/rack/entities/interactions/create/wall/initialize_1
#
# Place one of the rack right interaction of a wall rack
#
# @input storage pk:common temp
#   rack: Rack
#       Data of the rack
#
# @context one of the rack left (slot) interaction at the rack align xyz positioned ~0.5 ~ ~0.5

# Set tags
tag @s add pk.custom_block
tag @s add pk.racks
tag @s add pk.racks.block
tag @s add pk.racks.block.rack
tag @s add pk.racks.block.rack.type.wall
tag @s add pk.racks.block.rack.part.left
tag @s add pk.racks.block.rack.interaction
tag @s add pk.racks.block.rack.interaction.1

# Set scores
execute store result score @s pk.custom_block.component.id run data get storage pk:common temp.rack.id

# Set data
data merge entity @s {height:0.5f,width:0.5f,response:1b}

# Relocate
execute if data storage pk:common temp.rack{facing:"north"} run tp @s ~0.25 ~0.075 ~0.375
execute if data storage pk:common temp.rack{facing:"east"} run tp @s ~-0.375 ~0.075 ~0.25
execute if data storage pk:common temp.rack{facing:"south"} run tp @s ~-0.25 ~0.075 ~-0.375
execute if data storage pk:common temp.rack{facing:"west"} run tp @s ~0.375 ~0.075 ~-0.25