#> pk_racks:blocks/rack/entities/interactions/create/ground/initialize_1
#
# Place the left interaction of a ground rack
#
# @input storage pk:common temp
#   rack: Rack
#       Data of the rack
#
# @context rack left (slot) interaction at the rack align xyz positioned ~0.5 ~ ~0.5

# Set tags
tag @s add pk.custom_block
tag @s add pk.racks
tag @s add pk.racks.block
tag @s add pk.racks.block.rack
tag @s add pk.racks.block.rack.type.ground
tag @s add pk.racks.block.rack.part.left
tag @s add pk.racks.block.rack.interaction
tag @s add pk.racks.block.rack.interaction.1

# Set scores
execute store result score @s pk.custom_block.component.id run data get storage pk:common temp.rack.id

data merge entity @s {height:1.002f,width:1.001f,response:1b}

tp @s ~ ~-0.001 ~