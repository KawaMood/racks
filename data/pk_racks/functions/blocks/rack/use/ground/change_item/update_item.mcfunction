#> pk_racks:blocks/rack/use/ground/change_item/update_item
#@context a temporary armor_stand, at user

# Prepare data
data remove storage pk.common:data Temp.ItemDisplay
data modify storage pk.common:data Temp.ItemDisplay set value {transformation:{scale:[1f,1f,1f]}}
data modify storage pk.common:data Temp.ItemDisplay.item set from storage pk.common:data Temp.Player.SelectedItem
data modify entity @s HandItems[0] set from storage pk.common:data Temp.Player.SelectedItem

# Merge transformation depending on the item tag
# - Swords
execute if entity @s[predicate=pk_racks:hold/sword] run data modify storage pk.common:data Temp.ItemDisplay merge value {transformation:{left_rotation:[0f,0f,0.924f,-0.383f],translation:[0f,0.2f,0f]}}
# - Pickaxes
execute if entity @s[predicate=pk_racks:hold/pickaxe] run data modify storage pk.common:data Temp.ItemDisplay merge value {transformation:{left_rotation:[0f,0f,0.383f,0.924f],translation:[0f,0.15f,0f]}}
# - Axes
execute if entity @s[predicate=pk_racks:hold/axe] run data modify storage pk.common:data Temp.ItemDisplay merge value {transformation:{left_rotation:[0f,0f,0.383f,0.924f],translation:[0f,0.2f,0f]}}
# - Shovels
execute if entity @s[predicate=pk_racks:hold/shovel] run data modify storage pk.common:data Temp.ItemDisplay merge value {transformation:{left_rotation:[0f,0f,0.383f,0.924f],translation:[0f,0.15f,0f]}}
# - Hoes
execute if entity @s[predicate=pk_racks:hold/hoe] run data modify storage pk.common:data Temp.ItemDisplay merge value {transformation:{left_rotation:[0f,0f,0.383f,0.924f],translation:[0f,0.08f,0f]}}
# - Fishing Rod
execute if entity @s[predicate=pk_racks:hold/fishing_rod] run data modify storage pk.common:data Temp.ItemDisplay merge value {transformation:{left_rotation:[0f,0f,0.383f,0.924f],translation:[0f,0.08f,0f]}}

# Remove the temporary armor_stand
kill @s