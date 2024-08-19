#> pk_racks:blocks/rack/entities/interactions/create/_run
#
# Place the interactions of a rack
#
# @input storage pk:common temp
#   rack: Rack
#       Data of the rack
#
# @context location of the rack

# Switch process depending on the wall data of the rack
#   Ground
execute unless data storage pk:common temp.rack{wall:1b} align xyz positioned ~0.5 ~ ~0.5 run return run function pk_racks:blocks/rack/entities/interactions/create/ground/_run
#   @continue Wall
execute align xyz positioned ~0.5 ~ ~0.5 run function pk_racks:blocks/rack/entities/interactions/create/wall/_run