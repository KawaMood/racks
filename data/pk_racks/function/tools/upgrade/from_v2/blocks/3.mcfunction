#> pk_racks:tools/upgrade/from_v2/blocks/3

execute if score $update.attempt pk.temp matches 0 store result score $update.is_forceloaded pk.temp run forceload query ~ ~
execute if score $update.attempt pk.temp matches 0 if score $update.is_forceloaded pk.temp matches 0 run forceload add ~ ~

execute unless loaded ~ ~ ~ run return run schedule function pk_racks:tools/upgrade/from_v2/blocks/2_set_context 1s
function pk_racks:tools/upgrade/from_v2/blocks/4 with storage pk:common update.new_entry