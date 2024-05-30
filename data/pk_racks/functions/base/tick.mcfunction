#> pk_racks:base/tick
# Main tick

# ―――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――― 
# Custom blocks:
# ――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――

# Rack controller: run environment checks only (can be turned off)
execute unless score $pk.racks.ignore_environment pk.value matches 1 as @e[type=marker,tag=pk.racks.rack.controller] at @s run function pk_racks:blocks/rack/environment/controller_tick