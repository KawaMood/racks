# Store block placer data
data modify storage pk:common temp.block_placer_entity set from entity @s
kill @s

# Try to place the rack as the player
execute as @p[tag=pk.current.player] run function pk_racks:blocks/rack/actions/create/from_placer_entity