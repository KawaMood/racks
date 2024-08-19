#> pk_racks:_main/uninstall/1

data modify storage pk:racks uninstall.rack set from storage pk:racks uninstall.racks[-1]
function pk_racks:_main/uninstall/2 with storage pk:racks uninstall.rack.location