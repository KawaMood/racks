#> pk_racks:blocks/rack/entities/interactions/create/ground/initialize_3
#
# Place one of the rack right interaction of a ground rack
#
# @input storage pk:common temp
#   rack: Rack
#       Data of the rack
#
# @context one of the rack right (slot) interaction at the rack align xyz positioned ~0.5 ~ ~0.5

# Set tags
tag @s add pk.custom_block
tag @s add pk.racks
tag @s add pk.racks.block
tag @s add pk.racks.block.rack
tag @s add pk.racks.block.rack.type.ground
tag @s add pk.racks.block.rack.part.right
tag @s add pk.racks.block.rack.interaction
tag @s add pk.racks.block.rack.interaction.3

# Set scores
execute store result score @s pk.custom_block.component.id run data get storage pk:common temp.rack.id

# Set data
data merge entity @s {height:1.004f,width:0.5005f,response:1b}

# Relocate
execute if data storage pk:common temp.rack{facing:"north"} run tp @s ~-0.2505 ~-0.002 ~0.2505
execute if data storage pk:common temp.rack{facing:"east"} run tp @s ~-0.2505 ~-0.002 ~-0.2505
execute if data storage pk:common temp.rack{facing:"south"} run tp @s ~0.2505 ~-0.002 ~-0.2505
execute if data storage pk:common temp.rack{facing:"west"} run tp @s ~0.2505 ~-0.002 ~0.2505