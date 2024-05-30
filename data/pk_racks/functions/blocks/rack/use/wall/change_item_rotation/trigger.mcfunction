#> pk_racks:blocks/rack/use/wall/change_item_rotation/trigger

# Toggle rotation value
execute store success score $item_rotation pk.temp if score $item_rotation pk.temp matches 0

# Store the new item_rotation
execute store result storage pk.common:data Temp.Rack.ItemRotation byte 1 run scoreboard players get $item_rotation pk.temp

# Update item display entity
execute summon armor_stand run function pk_racks:blocks/rack/use/wall/change_item_rotation/update_item
data modify entity @e[type=item_display,tag=pk.temp.current.component,tag=pk.item.1,distance=..18,limit=1] {} merge from storage pk.common:data Temp.ItemDisplay

# Animations
execute at @e[type=marker,tag=pk.racks.rack.controller,tag=pk.temp.current.component,distance=..18,limit=1] run playsound entity.item_frame.rotate_item block @a[distance=..30] ~ ~ ~ 1 0.8

# Debug logs
execute if score $logs.datapack.racks pk.value matches 1 run tellraw @a[tag=pk.dev] [{"selector":"@a[tag=pk.temp.current.player,limit=1]","color": "gray"},{"text": " changed Rack's item rotation at ["},{"nbt":"Temp.Rack.x","storage":"pk.common:data"},{"text": ","},{"nbt":"Temp.Rack.y","storage":"pk.common:data"},{"text": ","},{"nbt":"Temp.Rack.z","storage":"pk.common:data"},{"text": "] to "},{"nbt":"Temp.Rack.ItemRotation","storage":"pk.common:data"}]