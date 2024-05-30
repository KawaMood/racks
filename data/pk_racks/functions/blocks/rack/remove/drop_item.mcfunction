#> pk_racks:blocks/rack/remove/drop_item

# Drop item and run correct blocks break particles depending on the skin
execute if data storage pk.common:data Temp.Rack{Type:"oak"} run function pk_racks:blocks/rack/remove/skins/oak
execute if data storage pk.common:data Temp.Rack{Type:"birch"} run function pk_racks:blocks/rack/remove/skins/birch
execute if data storage pk.common:data Temp.Rack{Type:"spruce"} run function pk_racks:blocks/rack/remove/skins/spruce
execute if data storage pk.common:data Temp.Rack{Type:"dark_oak"} run function pk_racks:blocks/rack/remove/skins/dark_oak
execute if data storage pk.common:data Temp.Rack{Type:"jungle"} run function pk_racks:blocks/rack/remove/skins/jungle
execute if data storage pk.common:data Temp.Rack{Type:"acacia"} run function pk_racks:blocks/rack/remove/skins/acacia
execute if data storage pk.common:data Temp.Rack{Type:"crimson"} run function pk_racks:blocks/rack/remove/skins/crimson
execute if data storage pk.common:data Temp.Rack{Type:"warped"} run function pk_racks:blocks/rack/remove/skins/warped
execute if data storage pk.common:data Temp.Rack{Type:"mangrove"} run function pk_racks:blocks/rack/remove/skins/mangrove
execute if data storage pk.common:data Temp.Rack{Type:"cherry"} run function pk_racks:blocks/rack/remove/skins/cherry
execute if data storage pk.common:data Temp.Rack{Type:"bamboo"} run function pk_racks:blocks/rack/remove/skins/bamboo