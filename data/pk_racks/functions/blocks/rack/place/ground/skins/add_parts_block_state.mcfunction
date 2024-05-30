#> pk_racks:blocks/rack/place/ground/skins/add_parts_block_state
# The type score has been defined earlier within function pk_racks:blocks/rack/place/trigger

execute if score $type pk.temp matches 0 run data merge entity @s {block_state:{Name:"minecraft:oak_fence"}}
execute if score $type pk.temp matches 1 run data merge entity @s {block_state:{Name:"minecraft:birch_fence"}}
execute if score $type pk.temp matches 2 run data merge entity @s {block_state:{Name:"minecraft:spruce_fence"}}
execute if score $type pk.temp matches 3 run data merge entity @s {block_state:{Name:"minecraft:dark_oak_fence"}}
execute if score $type pk.temp matches 4 run data merge entity @s {block_state:{Name:"minecraft:jungle_fence"}}
execute if score $type pk.temp matches 5 run data merge entity @s {block_state:{Name:"minecraft:acacia_fence"}}
execute if score $type pk.temp matches 6 run data merge entity @s {block_state:{Name:"minecraft:crimson_fence"}}
execute if score $type pk.temp matches 7 run data merge entity @s {block_state:{Name:"minecraft:warped_fence"}}
execute if score $type pk.temp matches 8 run data merge entity @s {block_state:{Name:"minecraft:mangrove_fence"}}
execute if score $type pk.temp matches 9 run data merge entity @s {block_state:{Name:"minecraft:cherry_fence"}}
execute if score $type pk.temp matches 10 run data merge entity @s {block_state:{Name:"minecraft:bamboo_fence"}}