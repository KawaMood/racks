#> pk_racks:blocks/rack/remove/drop_content/2

# Prepare item
summon item ~ ~ ~ {Item:{id:"minecraft:stick",Count:1b},Tags:["pk.temp.current.item"]}
data modify entity @e[type=item,tag=pk.temp.current.item,distance=..0.1,limit=1] Item set from storage pk.common:data Temp.Rack.Items[1]

# Air toggling
execute as @e[type=item,tag=pk.temp.current.item,distance=..0.1,limit=1] run function pk_racks:blocks/rack/helpers/drop/set_motion

# Remove tag
tag @e[type=item,tag=pk.temp.current.item,distance=..0.1,limit=1] remove pk.temp.current.item