#> pk_racks:items/rack/loot

$function pk_racks:items/rack/attributes/$(variant)
data modify storage pk:common package.dynamic_item.args set value {apply_random_motion:1b}
data modify storage pk:common package.dynamic_item.args.entity_data.Item set from storage pk:common temp.attributes
function pk_racks:packages/dynamic_item/drop/_run