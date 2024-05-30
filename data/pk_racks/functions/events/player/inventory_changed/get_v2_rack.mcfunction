#> pk_racks:events/player/inventory_changed/get_v2_rack

# Revoke advancement
advancement revoke @s only pk_racks:events/inventory_changed/get_v2_rack

# Clear and give back items
data remove storage pk:common temp.args
#   Acacia
data modify storage pk:common temp.args set value {variant:"acacia",count:0}
execute store result storage pk:common temp.args.count int 1 run clear @s player_head[custom_data~{pkAcaciaRack:1b}]
execute unless data storage pk:common temp.args{count:0} run function pk_racks:items/rack/give with storage pk:common temp.args
#   Bamboo
data modify storage pk:common temp.args set value {variant:"bamboo",count:0}
execute store result storage pk:common temp.args.count int 1 run clear @s player_head[custom_data~{pkBambooRack:1b}]
execute unless data storage pk:common temp.args{count:0} run function pk_racks:items/rack/give with storage pk:common temp.args
#   Birch
data modify storage pk:common temp.args set value {variant:"birch",count:0}
execute store result storage pk:common temp.args.count int 1 run clear @s player_head[custom_data~{pkBirchRack:1b}]
execute unless data storage pk:common temp.args{count:0} run function pk_racks:items/rack/give with storage pk:common temp.args
#   Cherry
data modify storage pk:common temp.args set value {variant:"cherry",count:0}
execute store result storage pk:common temp.args.count int 1 run clear @s player_head[custom_data~{pkCherryRack:1b}]
execute unless data storage pk:common temp.args{count:0} run function pk_racks:items/rack/give with storage pk:common temp.args
#   Crimson
data modify storage pk:common temp.args set value {variant:"crimson",count:0}
execute store result storage pk:common temp.args.count int 1 run clear @s player_head[custom_data~{pkCrimsonRack:1b}]
execute unless data storage pk:common temp.args{count:0} run function pk_racks:items/rack/give with storage pk:common temp.args
#   Dark oak
data modify storage pk:common temp.args set value {variant:"dark_oak",count:0}
execute store result storage pk:common temp.args.count int 1 run clear @s player_head[custom_data~{pkDarkOakRack:1b}]
execute unless data storage pk:common temp.args{count:0} run function pk_racks:items/rack/give with storage pk:common temp.args
#   Jungle
data modify storage pk:common temp.args set value {variant:"jungle",count:0}
execute store result storage pk:common temp.args.count int 1 run clear @s player_head[custom_data~{pkJungleRack:1b}]
execute unless data storage pk:common temp.args{count:0} run function pk_racks:items/rack/give with storage pk:common temp.args
#   Mangrove
data modify storage pk:common temp.args set value {variant:"mangrove",count:0}
execute store result storage pk:common temp.args.count int 1 run clear @s player_head[custom_data~{pkMangroveRack:1b}]
execute unless data storage pk:common temp.args{count:0} run function pk_racks:items/rack/give with storage pk:common temp.args
#   Oak
data modify storage pk:common temp.args set value {variant:"oak",count:0}
execute store result storage pk:common temp.args.count int 1 run clear @s player_head[custom_data~{pkOakRack:1b}]
execute unless data storage pk:common temp.args{count:0} run function pk_racks:items/rack/give with storage pk:common temp.args
#   Spruce
data modify storage pk:common temp.args set value {variant:"spruce",count:0}
execute store result storage pk:common temp.args.count int 1 run clear @s player_head[custom_data~{pkSpruceRack:1b}]
execute unless data storage pk:common temp.args{count:0} run function pk_racks:items/rack/give with storage pk:common temp.args
#   Warped
data modify storage pk:common temp.args set value {variant:"warped",count:0}
execute store result storage pk:common temp.args.count int 1 run clear @s player_head[custom_data~{pkWarpedRack:1b}]
execute unless data storage pk:common temp.args{count:0} run function pk_racks:items/rack/give with storage pk:common temp.args