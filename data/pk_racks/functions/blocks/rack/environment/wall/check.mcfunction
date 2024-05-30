#> pk_racks:blocks/rack/environment/wall/check

# Remove block if the support block has been broken or if a block has been set on it (falling block / block pushed by piston)
execute store result score $facing pk.temp run data get entity @s data.Rack.Facing
execute if score $facing pk.temp matches 0 if block ~ ~ ~-1 air run function pk_racks:blocks/rack/remove/from_controller
execute if score $facing pk.temp matches 1 if block ~ ~ ~01 air run function pk_racks:blocks/rack/remove/from_controller
execute if score $facing pk.temp matches 2 if block ~01 ~ ~ air run function pk_racks:blocks/rack/remove/from_controller
execute if score $facing pk.temp matches 3 if block ~-1 ~ ~ air run function pk_racks:blocks/rack/remove/from_controller
execute unless block ~ ~ ~ air run function pk_racks:blocks/rack/remove/from_controller