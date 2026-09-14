#> pk_racks:items/rack/update/run
#
# @args
#   version (byte): item version to set
#
# Update racks items from lower versions

# Mark player
tag @s add pk.current.player

# Container
data modify storage pk:common temp.container set value []
data modify storage pk:common temp.container append from entity @s Inventory[{components:{"minecraft:custom_data":{pk_data:{id:"rack",from:"racks"}}}}]
$data remove storage pk:common temp.container[{components:{"minecraft:custom_data":{pk_data:{id:"rack",from:"racks",version:$(version)s}}}}]
execute if data storage pk:common temp.container[{}] run function pk_racks:items/rack/update/change/slot/container_recursive

# Free player
tag @s remove pk.current.player