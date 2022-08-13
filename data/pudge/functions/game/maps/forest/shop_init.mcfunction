#summon shops
#red
summon marker 20 61 19 {Tags:["gameMarker","redShop"]}
execute at @e[type=marker,tag=redShop,limit=1] run setblock ~ ~ ~ ender_chest[facing=east]
#blue
summon marker 92 61 19 {Tags:["gameMarker","blueShop"]}
execute at @e[type=marker,tag=blueShop,limit=1] run setblock ~ ~ ~ ender_chest[facing=west]