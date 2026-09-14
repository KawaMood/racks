#> pk_racks:events/player/placed_block/rack

# Revoke advancement
advancement revoke @s only pk_racks:events/item_used_on_block/rack_placer_on_any

# Mark the current player
tag @s add pk.current.player

# Store item data the player used to place the Waystone and tell the process it has been placed by a player
data modify storage pk:common temp.item set from entity @s SelectedItem
scoreboard players set $pk.custom_block.placed_by_player pk.temp 1

# Search the placed entity
execute as @n[type=glow_item_frame,tag=pk.racks.block_placer,distance=..20] at @s align xyz run function pk_racks:events/player/item_used_on_block/rack_placer_on_any/from_placer_entity

# Unmark the current player
tag @s remove pk.current.player

# Reset the placing by player score
scoreboard players set $pk.custom_block.placed_by_player pk.temp 0