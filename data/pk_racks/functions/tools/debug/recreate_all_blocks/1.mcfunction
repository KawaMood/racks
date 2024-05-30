#> pk_racks:tools/debug/recreate_all_blocks/1

data modify storage pk:common debug.recreate.block set from storage pk:common debug.recreate.blocks[-1]
function pk_racks:tools/debug/recreate_all_blocks/2 with storage pk:common debug.recreate.block.location