#> pk_racks:blocks/rack/place/ground/start
# The facing score has been defined earlier within function pk_racks:blocks/rack/place/score_set_facing_direction

# Set block
setblock ~ ~ ~ barrier

# Create item display entities
execute summon item_display run function pk_racks:blocks/rack/place/ground/item_display/1
execute summon item_display run function pk_racks:blocks/rack/place/ground/item_display/2

# Create interactions entities
execute summon interaction run function pk_racks:blocks/rack/place/ground/interaction/1
execute summon interaction run function pk_racks:blocks/rack/place/ground/interaction/2
execute summon interaction run function pk_racks:blocks/rack/place/ground/interaction/3

# Create decorative entities
execute positioned ~0.5 ~0.5 ~0.5 run function pk_racks:blocks/rack/place/ground/skins/block_display/start

# Debug logs
execute if score $logs.datapack.racks pk.value matches 1 run tellraw @a[tag=pk.dev] [{"selector":"@a[tag=pk.temp.current.player,limit=1]","color": "gray"},{"text": " placed (ground) Rack at ["},{"nbt":"Temp.Rack.x","storage":"pk.common:data"},{"text": ","},{"nbt":"Temp.Rack.y","storage":"pk.common:data"},{"text": ","},{"nbt":"Temp.Rack.z","storage":"pk.common:data"},{"text": "]"}]