#> pk_racks:blocks/rack/actions/break/loot_item/right
#
# Drop the stored item
#
# @input temp.rack: Rack
#       Data of the rack the clicked interaction belongs to

data modify storage pk:common package.dynamic_item.args set value {apply_random_motion:1b}
data modify storage pk:common package.dynamic_item.args.entity_data.Item set from storage pk:common temp.rack.items[1]
function pk_racks:packages/dynamic_item/drop/_run