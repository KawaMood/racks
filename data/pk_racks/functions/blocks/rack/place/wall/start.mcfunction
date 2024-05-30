#> pk_racks:blocks/rack/place/wall/start
# The facing score has been defined earlier within function pk_racks:blocks/rack/place/score_set_facing_direction

# Set block
setblock ~ ~ ~ air

# Create item display entities
execute positioned ~0.5 ~0.5 ~0.5 summon item_display run function pk_racks:blocks/rack/place/wall/item_display/1

# Create interactions entities
execute positioned ~0.5 ~ ~0.5 summon interaction run function pk_racks:blocks/rack/place/wall/interaction/1

# Create decorative entities
execute positioned ~0.5 ~0.5 ~0.5 run function pk_racks:blocks/rack/place/wall/skins/block_display/start