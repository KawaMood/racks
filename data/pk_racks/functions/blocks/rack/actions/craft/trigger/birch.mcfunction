#> pk_racks:blocks/rack/actions/craft/trigger/birch

# Remove advancement and recipe
advancement revoke @s only pk_racks:interactions/crafted_birch_rack
recipe take @s pk_racks:birch_rack

# Check if the player crafted a knowledge book
execute if entity @s[scores={pk.crafted.knowledge_book=1..}] store result score %crafted_amount pk.temp run clear @s knowledge_book
execute if score %crafted_amount pk.temp matches 1.. run function pk_racks:blocks/rack/actions/craft/recursive_give/birch