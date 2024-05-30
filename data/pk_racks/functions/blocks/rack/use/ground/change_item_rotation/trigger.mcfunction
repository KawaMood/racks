#> pk_racks:blocks/rack/use/ground/change_item_rotation/trigger

# Set the facing score
execute store result score $facing pk.temp run data get storage pk.common:data Temp.Rack.Facing

# Update item_rotation score and data
scoreboard players add $item_rotation pk.temp 1
execute if score $item_rotation pk.temp matches 8.. run scoreboard players set $item_rotation pk.temp 0

# Rotate items display entities
# - 0 (45f)
execute if score $item_rotation pk.temp matches 0 as @e[type=item_display,tag=pk.racks.rack.item,tag=pk.temp.current.component,distance=..18,limit=2] run data modify entity @s Rotation[0] set value 45f
# - 1 (skip if aligned on Z axis, 90f if aligned on X axis)
execute if score $facing pk.temp matches 0..1 if score $item_rotation pk.temp matches 1 as @e[type=item_display,tag=pk.racks.rack.item,tag=pk.temp.current.component,distance=..18,limit=2] run data modify entity @s Rotation[0] set value 90f
execute if score $facing pk.temp matches 2..3 if score $item_rotation pk.temp matches 1 run scoreboard players add $item_rotation pk.temp 1
# - 2 (135f)
execute if score $item_rotation pk.temp matches 2 as @e[type=item_display,tag=pk.racks.rack.item,tag=pk.temp.current.component,distance=..18,limit=2] run data modify entity @s Rotation[0] set value 135f
# - 3 (skip if aligned on X axis, 180f if aligned on Z axis)
execute if score $facing pk.temp matches 0..1 if score $item_rotation pk.temp matches 3 run scoreboard players add $item_rotation pk.temp 1
execute if score $facing pk.temp matches 2..3 if score $item_rotation pk.temp matches 3 as @e[type=item_display,tag=pk.racks.rack.item,tag=pk.temp.current.component,distance=..18,limit=2] run data modify entity @s Rotation[0] set value 180f
# - 4 (225f)
execute if score $item_rotation pk.temp matches 4 as @e[type=item_display,tag=pk.racks.rack.item,tag=pk.temp.current.component,distance=..18,limit=2] run data modify entity @s Rotation[0] set value 225f
# - 5 (skip if aligned on Z axis, 270f if aligned on X axis)
execute if score $facing pk.temp matches 0..1 if score $item_rotation pk.temp matches 5 as @e[type=item_display,tag=pk.racks.rack.item,tag=pk.temp.current.component,distance=..18,limit=2] run data modify entity @s Rotation[0] set value 270f
execute if score $facing pk.temp matches 2..3 if score $item_rotation pk.temp matches 5 run scoreboard players add $item_rotation pk.temp 1
# - 6 (315f)
execute if score $item_rotation pk.temp matches 6 as @e[type=item_display,tag=pk.racks.rack.item,tag=pk.temp.current.component,distance=..18,limit=2] run data modify entity @s Rotation[0] set value 315f
# - 7 (skip if aligned on X axis, set to 0f if aligned on Z axis)
execute if score $facing pk.temp matches 0..1 if score $item_rotation pk.temp matches 7 as @e[type=item_display,tag=pk.racks.rack.item,tag=pk.temp.current.component,distance=..18,limit=2] run data modify entity @s Rotation[0] set value 45f
execute if score $facing pk.temp matches 0..1 if score $item_rotation pk.temp matches 7 run scoreboard players set $item_rotation pk.temp 0
execute if score $facing pk.temp matches 2..3 if score $item_rotation pk.temp matches 7 as @e[type=item_display,tag=pk.racks.rack.item,tag=pk.temp.current.component,distance=..18,limit=2] run data modify entity @s Rotation[0] set value 0f

# Store the new item_rotation
execute store result storage pk.common:data Temp.Rack.ItemRotation byte 1 run scoreboard players get $item_rotation pk.temp

# Animations
execute at @e[type=marker,tag=pk.racks.rack.controller,tag=pk.temp.current.component,distance=..18,limit=1] run playsound entity.item_frame.rotate_item block @a[distance=..30] ~ ~ ~ 1 0.8

# Debug logs
execute if score $logs.datapack.racks pk.value matches 1 run tellraw @a[tag=pk.dev] [{"selector":"@a[tag=pk.temp.current.player,limit=1]","color": "gray"},{"text": " changed Rack's item rotation at ["},{"nbt":"Temp.Rack.x","storage":"pk.common:data"},{"text": ","},{"nbt":"Temp.Rack.y","storage":"pk.common:data"},{"text": ","},{"nbt":"Temp.Rack.z","storage":"pk.common:data"},{"text": "] to "},{"nbt":"Temp.Rack.ItemRotation","storage":"pk.common:data"}]