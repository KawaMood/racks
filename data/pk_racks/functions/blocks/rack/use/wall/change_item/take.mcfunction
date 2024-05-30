#> pk_racks:blocks/rack/use/wall/change_item/take
#@context as user, at user

scoreboard players set $stop.switch_parts pk.temp 1

# Update user
item replace entity @s weapon.mainhand from entity @e[type=item_display,tag=pk.temp.current.component,tag=pk.item.1,distance=..18,limit=1] container.0

# Update item display entity
data modify entity @e[type=item_display,tag=pk.temp.current.component,tag=pk.item.1,distance=..18,limit=1] item set value {}

# Update temp rack storage
data modify storage pk.common:data Temp.Rack.Items[0] set value {}

# Animations
execute at @e[type=marker,tag=pk.racks.rack.controller,tag=pk.temp.current.component,distance=..18,limit=1] run playsound entity.item_frame.remove_item block @a[distance=..30] ~ ~ ~ 1 0.8

# Logs
execute if score $logs.datapack.racks pk.value matches 1 run tellraw @a[tag=pk.dev] [{"selector":"@a[tag=pk.temp.current.player,limit=1]","color": "gray"},{"text": " took Rack's item at ["},{"nbt":"Temp.Rack.x","storage":"pk.common:data"},{"text": ","},{"nbt":"Temp.Rack.y","storage":"pk.common:data"},{"text": ","},{"nbt":"Temp.Rack.z","storage":"pk.common:data"},{"text": "]"}]