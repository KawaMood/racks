#> pk_racks:_main/uninstall/references/specific

# Clear scores
scoreboard objectives remove pk.racks.gametime

# Clear storage
data remove storage pk:racks database
data remove storage pk:common installed_datapacks[{id:"racks"}]