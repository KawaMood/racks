#> pk_racks:blocks/rack/environment/controller_tick

# Switch Ground/Wall
execute if entity @s[tag=pk.racks.rack.ground] run function pk_racks:blocks/rack/environment/ground/check
execute if entity @s[tag=pk.racks.rack.wall] run function pk_racks:blocks/rack/environment/wall/check