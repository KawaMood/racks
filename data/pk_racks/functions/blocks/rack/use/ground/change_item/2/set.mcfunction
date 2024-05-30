#> pk_racks:blocks/rack/use/ground/change_item/2/set
#@context as user, at user

scoreboard players set $stop.switch_parts pk.temp 1

# Update user
item replace entity @s weapon.mainhand with air

# Update item display entity
execute summon armor_stand run function pk_racks:blocks/rack/use/ground/change_item/update_item
data modify entity @e[type=item_display,tag=pk.temp.current.component,tag=pk.item.2,distance=..18,limit=1] {} merge from storage pk.common:data Temp.ItemDisplay

# Update temp rack storage
data modify storage pk.common:data Temp.Rack.Items[1] set from storage pk.common:data Temp.Player.SelectedItem

# Animations
execute at @e[type=marker,tag=pk.racks.rack.controller,tag=pk.temp.current.component,distance=..18,limit=1] run playsound item.armor.equip_generic block @a[distance=..30] ~ ~ ~

# Logs
execute if score $logs.datapack.racks pk.value matches 1 run tellraw @a[tag=pk.dev] [{"selector":"@a[tag=pk.temp.current.player,limit=1]","color": "gray"},{"text": " set Rack's item (2) at ["},{"nbt":"Temp.Rack.x","storage":"pk.common:data"},{"text": ","},{"nbt":"Temp.Rack.y","storage":"pk.common:data"},{"text": ","},{"nbt":"Temp.Rack.z","storage":"pk.common:data"},{"text": "]"}]