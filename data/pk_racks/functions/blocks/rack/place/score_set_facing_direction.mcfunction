#> pk_racks:blocks/rack/place/score_set_facing_direction

scoreboard players set $facing pk.temp 0

# Check what direction the block is facing
# South (0)
execute if block ~ ~ ~ player_head[rotation=15] run scoreboard players set $facing pk.temp 0
execute if block ~ ~ ~ player_head[rotation=0] run scoreboard players set $facing pk.temp 0
execute if block ~ ~ ~ player_head[rotation=1] run scoreboard players set $facing pk.temp 0
execute if block ~ ~ ~ player_head[rotation=2] run scoreboard players set $facing pk.temp 0
execute if block ~ ~ ~ player_wall_head[facing=south] run scoreboard players set $facing pk.temp 0
# North (1)
execute if block ~ ~ ~ player_head[rotation=7] run scoreboard players set $facing pk.temp 1
execute if block ~ ~ ~ player_head[rotation=8] run scoreboard players set $facing pk.temp 1
execute if block ~ ~ ~ player_head[rotation=9] run scoreboard players set $facing pk.temp 1
execute if block ~ ~ ~ player_head[rotation=10] run scoreboard players set $facing pk.temp 1
execute if block ~ ~ ~ player_wall_head[facing=north] run scoreboard players set $facing pk.temp 1
# West (2)
execute if block ~ ~ ~ player_head[rotation=3] run scoreboard players set $facing pk.temp 2
execute if block ~ ~ ~ player_head[rotation=4] run scoreboard players set $facing pk.temp 2
execute if block ~ ~ ~ player_head[rotation=5] run scoreboard players set $facing pk.temp 2
execute if block ~ ~ ~ player_head[rotation=6] run scoreboard players set $facing pk.temp 2
execute if block ~ ~ ~ player_wall_head[facing=west] run scoreboard players set $facing pk.temp 2
# East (3)
execute if block ~ ~ ~ player_head[rotation=11] run scoreboard players set $facing pk.temp 3
execute if block ~ ~ ~ player_head[rotation=12] run scoreboard players set $facing pk.temp 3
execute if block ~ ~ ~ player_head[rotation=13] run scoreboard players set $facing pk.temp 3
execute if block ~ ~ ~ player_head[rotation=14] run scoreboard players set $facing pk.temp 3
execute if block ~ ~ ~ player_wall_head[facing=east] run scoreboard players set $facing pk.temp 3