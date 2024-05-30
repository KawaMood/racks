#> pk_racks:blocks/rack/actions/break/should_loot_itself
# Check if the rack existed enough time to be looted when removed 
# Used for protected-area plugins compatibility
#
# @input temp.rack: Rack
#       Data of the rack the clicked interaction belongs to

# @return fail if broken by a player who is in creative mode
execute if entity @a[tag=pk.current.player,gamemode=creative,distance=..65,limit=1] run return fail

# @continue Store the created_at_gametime from the rack data, or set it to 0 if the rack was created before 4.0.0
scoreboard players set $created_at_gametime pk.temp 0
execute store result score $created_at_gametime pk.temp run data get storage pk:common temp.rack.created_at_gametime 1
# Check if should loot
execute unless score $pk.racks.settings.lootable_delay pk.value matches 0.. run scoreboard players set $pk.racks.settings.lootable_delay pk.value 0
execute store result score $age pk.temp run time query gametime
scoreboard players operation $age pk.temp -= $created_at_gametime pk.temp
#   @return fail if lootable delay is greater than the current rack's age
execute if score $pk.racks.settings.lootable_delay pk.value > $age pk.temp run return fail

# @continue Loot
function pk_racks:items/rack/loot with storage pk:common temp.rack