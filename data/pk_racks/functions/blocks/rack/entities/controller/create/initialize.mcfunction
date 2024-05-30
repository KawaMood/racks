#> pk_racks:blocks/rack/entities/controller/create/initialize
#
# Initialize the controller entity of a rack
#
# @input storage pk:common temp
#   rack: Rack
#       Data of the rack

# Set tags
tag @s add pk.custom_block
tag @s add pk.racks
tag @s add pk.racks.block
tag @s add pk.racks.block.rack
tag @s add pk.racks.block.rack.controller
execute if data storage pk:common temp.rack{wall:1b} run tag @s add pk.racks.block.rack.type.wall
execute unless data storage pk:common temp.rack{wall:1b} run tag @s add pk.racks.block.rack.type.ground

# Set scores
#   id
execute store result score @s pk.custom_block.component.id run data get storage pk:common temp.rack.id
#   facing
scoreboard players set @s pk.custom_block.facing 0
execute if data storage pk:common temp.rack{facing:"east"} run scoreboard players set @s pk.custom_block.facing 1
execute if data storage pk:common temp.rack{facing:"south"} run scoreboard players set @s pk.custom_block.facing 2
execute if data storage pk:common temp.rack{facing:"west"} run scoreboard players set @s pk.custom_block.facing 3

# Set data
data modify entity @s data.pk_data.id set from storage pk:common temp.rack.id