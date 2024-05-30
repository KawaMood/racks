#> pk_racks:blocks/rack/remove/skins/birch

# Drop item
scoreboard players set $drop_with_random_motion pk.temp 1
function pk_racks:blocks/rack/helpers/drop/birch
scoreboard players set $drop_with_random_motion pk.temp 0

# Animations
particle block birch_fence ~ ~ ~ 0.5 0.5 0.5 0.001 10