#> pk_racks:_main/uninstall/single/turn_into_chest
#
# @reads pk:common temp
#   rack: Rack
#
# @context A rack controller at @s

setblock ~ ~ ~ chest
execute if data storage pk:common temp.rack.items[0].id run data modify block ~ ~ ~ Items append from storage pk:common temp.rack.items[0]
execute if data storage pk:common temp.rack.items[1].id run data modify storage pk:common temp.rack.items[1].Slot set value 1b
execute if data storage pk:common temp.rack.items[1].id run data modify block ~ ~ ~ Items append from storage pk:common temp.rack.items[1]