#> pk_racks:items/rack/give
#
# Give (a) rack(s) of a specific variant
#
# @input args
#   variant: string
#   count: int

$function pk_racks:items/rack/attributes/$(variant)
data modify storage pk:common package.dynamic_command.args set from storage pk:common temp.attributes
$data modify storage pk:common package.dynamic_command.args.count set value $(count)
function pk_racks:packages/dynamic_item/give with storage pk:common package.dynamic_command.args