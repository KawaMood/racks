#> pk_racks:blocks/rack/remove/skins/warped

# Drop item
scoreboard players set $drop_with_random_motion pk.temp 1
function pk_racks:blocks/rack/helpers/drop/warped
scoreboard players set $drop_with_random_motion pk.temp 0

# Animations
particle block warped_fence ~ ~ ~ 0.5 0.5 0.5 0.001 10