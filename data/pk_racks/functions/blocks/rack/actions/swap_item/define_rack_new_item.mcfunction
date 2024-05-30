#> pk_racks:blocks/rack/actions/swap_item/define_rack_new_item
#
# Try to define new rack item
#
# @writes temp.action_args
#       rack_new_item: Item or empty entry
#           New item to set in the rack's corresponding part
#
# @context clicked interaction at @s
#   Triggering player is marked with the tag "pk.current.player"

# Player holds nothing
execute unless data entity @s SelectedItem run return run data modify storage pk:common temp.action_args.new_rack_item set value {}

# Rack is on ground and player holds ground replaceable item
execute if data storage pk:common temp.action_args{rack_type:"ground"} if items entity @s weapon.mainhand #pk_racks:ground_rack_placeable run return run data modify storage pk:common temp.action_args.new_rack_item set from entity @s SelectedItem

# Rack is on wall and player holds wall replaceable item
execute if data storage pk:common temp.action_args{rack_type:"wall"} if items entity @s weapon.mainhand #pk_racks:wall_rack_placeable run return run data modify storage pk:common temp.action_args.new_rack_item set from entity @s SelectedItem