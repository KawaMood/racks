#> pk_racks:blocks/rack/use/ground/change_item/switch_parts
#@context as user, at user

# Clicked interaction part 1: change item 1
execute if entity @e[type=interaction,tag=pk.temp.current.interaction,tag=pk.part.1,distance=..18,limit=1] run function pk_racks:blocks/rack/use/ground/change_item/1/trigger
# Clicked interaction part 2 or 3: change item 2
execute if entity @e[type=interaction,tag=pk.temp.current.interaction,tag=!pk.part.1,distance=..18,limit=1] run function pk_racks:blocks/rack/use/ground/change_item/2/trigger