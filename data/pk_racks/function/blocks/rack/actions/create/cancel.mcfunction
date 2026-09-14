#> pk_racks:blocks/rack/actions/create/cancel

# Stop the process if the player is in creative mode
execute if entity @s[gamemode=creative] run return fail

# Give item back to the player
data modify storage pk:common temp.args.id set from storage pk:common temp.item.id
data modify storage pk:common temp.args.components set from storage pk:common temp.item.components
data modify storage pk:common temp.args.count set value 1
function pk_racks:packages/dynamic_item/give with storage pk:common temp.args