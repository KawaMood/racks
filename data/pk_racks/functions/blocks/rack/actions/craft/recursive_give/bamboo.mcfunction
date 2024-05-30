#> pk_racks:blocks/rack/actions/craft/recursive_give/bamboo

function pk_racks:blocks/rack/helpers/give/bamboo
scoreboard players remove %crafted_amount pk.temp 1
execute if score %crafted_amount pk.temp matches 1.. run function pk_racks:blocks/rack/actions/craft/recursive_give/bamboo