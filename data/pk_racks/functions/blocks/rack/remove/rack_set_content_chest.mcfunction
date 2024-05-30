#> pk_racks:blocks/rack/remove/rack_set_content_chest
# Backup the content of the rack into a chest

data modify storage pk.common:data Temp.Rack.Items[0].Slot set value 0b
data modify storage pk.common:data Temp.Rack.Items[1].Slot set value 1b

setblock ~ ~ ~ chest

data modify block ~ ~ ~ Items append from storage pk.common:data Temp.Rack.Items[]