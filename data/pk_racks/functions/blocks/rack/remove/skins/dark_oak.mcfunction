#> pk_racks:blocks/rack/remove/skins/dark_oak

# Drop item
scoreboard players set $drop_with_random_motion pk.temp 1
function pk_racks:blocks/rack/helpers/drop/dark_oak
scoreboard players set $drop_with_random_motion pk.temp 0

# Animations
particle block dark_oak_fence ~ ~ ~ 0.5 0.5 0.5 0.001 10