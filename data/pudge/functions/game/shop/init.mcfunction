#init based on map
execute if score $LoadMap var matches 1 run function pudge:game/maps/forest/shop_init
#set cost of shop items
function pudge:game/shop/set_default_costs
#reset player shop scoreboards
execute as @a[tag=isGamer] run function pudge:game/shop/player_init
#put items in shop (player nbt)
execute as @a[tag=isGamer] run function pudge:game/shop/inventory/update