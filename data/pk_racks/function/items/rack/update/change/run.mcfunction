#> pk_racks:items/rack/update/change/run
# Common process from each slot
# @args
#   variant (string): rack variant
# @context a temporary armor stand holding the item to change, at the current player

data modify storage pk:common temp.item set from entity @s equipment.mainhand
$function pk_racks:items/rack/attributes/$(variant)
data modify storage pk:common temp.attributes.count set from storage pk:common temp.item.count
data modify entity @s equipment.mainhand set from storage pk:common temp.attributes