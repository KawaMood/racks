# Merge transformation depending on the item tag
# - Swords
execute if entity @s[predicate=pk_racks:hold/sword] run data modify storage pk.common:data Temp.ItemDisplay merge value {transformation:{left_rotation:[0f,0f,-0.383f,0.924f],translation:[0.05f,0f,0.4f]}}
# - Pickaxes
execute if entity @s[predicate=pk_racks:hold/pickaxe] run data modify storage pk.common:data Temp.ItemDisplay merge value {transformation:{left_rotation:[0.383f,0.924f,0f,0f],translation:[0.045f,-0.125f,0.4f]}}
# - Axes
execute if entity @s[predicate=pk_racks:hold/axe] run data modify storage pk.common:data Temp.ItemDisplay merge value {transformation:{left_rotation:[0.843f,0.537f,0f,0f],translation:[0.05f,0.1f,0.4f]}}
# - Shovels
execute if entity @s[predicate=pk_racks:hold/shovel] run data modify storage pk.common:data Temp.ItemDisplay merge value {transformation:{left_rotation:[0f,0f,-0.383f,0.924f],translation:[0f,0.1f,0.4f]}}
# - Hoes
execute if entity @s[predicate=pk_racks:hold/hoe] run data modify storage pk.common:data Temp.ItemDisplay merge value {transformation:{left_rotation:[0f,0f,-0.383f,0.924f],translation:[0f,0.1f,0.4f]}}
# - Trident
execute if entity @s[predicate=pk_racks:hold/trident] run data modify storage pk.common:data Temp.ItemDisplay merge value {transformation:{left_rotation:[0f,0f,-0.707f,0.707f],translation:[1.25f,-0.525f,0.9f]}}
# - Crossbow
execute if entity @s[predicate=pk_racks:hold/crossbow] run data modify storage pk.common:data Temp.ItemDisplay merge value {transformation:{left_rotation:[-0.383f,0.924f,0f,0f],translation:[0f,-0.2f,0.3625f]}}
# - Bow
execute if entity @s[predicate=pk_racks:hold/bow] run data modify storage pk.common:data Temp.ItemDisplay merge value {transformation:{left_rotation:[0f,0f,0.383f,0.924f],translation:[0.3f,-0.4f,0.4f]}}
# - Shield
execute if entity @s[predicate=pk_racks:hold/shield] run data modify storage pk.common:data Temp.ItemDisplay merge value {transformation:{left_rotation:[-0.707f,0.707f,0f,0f],translation:[-0.5f,-0.5f,-0.225f]}}
# - Shears
execute if entity @s[predicate=pk_racks:hold/shears] run data modify storage pk.common:data Temp.ItemDisplay merge value {transformation:{scale:[0.65f,0.65f,0.65f],left_rotation:[0f,0f,0.924f,-0.383f],translation:[-0.3f,-0.45f,0.4f]}}
# - Fishing Rod
execute if entity @s[predicate=pk_racks:hold/fishing_rod] run data modify storage pk.common:data Temp.ItemDisplay merge value {transformation:{left_rotation:[0f,0f,-0.383f,0.924f],translation:[0f,0.05f,0.4f]}}
# - Brush
execute if entity @s[predicate=pk_racks:hold/brush] run data modify storage pk.common:data Temp.ItemDisplay merge value {transformation:{scale:[0.65f,0.65f,0.65f],left_rotation:[0f,0f,0.924f,-0.383f],translation:[-0.3f,-0.45f,0.4f]}}
# - Spyglass
execute if entity @s[predicate=pk_racks:hold/spyglass] run data modify storage pk.common:data Temp.ItemDisplay merge value {transformation:{left_rotation:[0.707f,0f,0f,-0.707f],translation:[0f,0.01f,0.35f],scale:[1.2f,1.2f,1.2f]}}