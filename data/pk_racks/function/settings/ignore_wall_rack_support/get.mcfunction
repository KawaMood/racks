#> pk_racks:settings/ignore_wall_rack_support/get

# If false
execute unless score $pk.racks.settings.ignore_wall_rack_support pk.value matches 1 run tellraw @s [{text:"Setting \"",color:"gray"},{text:"Ignore Wall Rack Support",color:"yellow"},{text:"\" is currently set to ",color:"gray"},{text:"false",color:"yellow"}]

# If true
execute if score $pk.racks.settings.ignore_wall_rack_support pk.value matches 1 run tellraw @s [{text:"Setting \"",color:"gray"},{text:"Ignore Wall Rack Support",color:"yellow"},{text:"\" is currently set to ",color:"gray"},{text:"true",color:"yellow"}]