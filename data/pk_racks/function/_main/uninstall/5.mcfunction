#> pk_racks:_main/uninstall/5
# @context any at the rack to remove (chunk loaded)

# Logs
tellraw @a[tag=pk.racks.uninstaller] [{"text": "Removed Rack at [","color": "gray"},{"nbt":"uninstall.rack.location.x","storage":"pk:racks"},{"text": ","},{"nbt":"uninstall.rack.location.y","storage":"pk:racks"},{"text": ","},{"nbt":"uninstall.rack.location.z","storage":"pk:racks"},{"text": "] in "},{"nbt":"uninstall.rack.location.dimension","storage":"pk:racks"}]

# Remove the current rack and store item(s) in a chest
execute store result score $temp pk.custom_block.component.id run data get storage pk:racks uninstall.rack
data modify storage pk:common temp.rack set from storage pk:racks uninstall.rack
execute as @e[type=marker,tag=pk.racks.block.rack.controller,predicate=pk_racks:scores/custom_block/component_id_match,distance=..1] at @s run function pk_racks:_main/uninstall/single/_run

# Unload the chunk if needed
execute if score $pk.racks.uninstall.chunk.already_forceload pk.value matches 0 run forceload remove ~ ~

# Continue process with next rack to remove, or stop it if there are no racks anymore
data remove storage pk:racks uninstall.racks[-1]
scoreboard players remove $pk.racks.uninstall.racks.length pk.value 1
execute if score $pk.racks.uninstall.racks.length pk.value matches 0 as @a[tag=pk.racks.uninstaller] run function pk_racks:_main/uninstall/stop
execute unless score $pk.racks.uninstall.racks.length pk.value matches 0 run function pk_racks:_main/uninstall/1