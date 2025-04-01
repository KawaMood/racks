#> pk_racks:_main/update/_run
#
# Update the current data pack if needed
#
# @writes score $pk.racks.version pk.value
#   The data pack's current version score
#
# @writes storage pk:common installed_datapacks[{id:"racks"}]
#       version: string
#           The data pack's current literal version

scoreboard players set $pk.racks.version pk.value 30103
data modify storage pk:common installed_datapacks[{id:"racks"}].version set value "3.1.3"