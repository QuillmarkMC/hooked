#summon shops
summon marker 5 -59 31 {Tags:["gameMarker","redShop"]}
execute at @e[type=marker,tag=redShop,limit=1] run setblock ~ ~ ~ ender_chest[facing=north]
summon marker 12 -59 22 {Tags:["gameMarker","blueShop"]}
execute at @e[type=marker,tag=blueShop,limit=1] run setblock ~ ~ ~ ender_chest[facing=south]
#set cost of shop items
function pudge:game/shop/set_default_costs
#reset player shop scoreboards
execute as @a[tag=isGamer] run function pudge:game/shop/player_init
#put items in shop (player nbt)
execute as @a[tag=isGamer] run function pudge:game/shop/inventory/update