#> pk_racks:tools/upgrade/from_v2/blocks/2

execute if score $update.attempt pk.temp matches 4.. run function pk_racks:tools/upgrade/from_v2/blocks/failed
$execute unless score $attempt pk.temp matches 4.. in $(dimension) positioned $(x) $(y) $(z) run function pk_racks:tools/upgrade/from_v2/blocks/3
scoreboard players add $update.attempt pk.temp 1