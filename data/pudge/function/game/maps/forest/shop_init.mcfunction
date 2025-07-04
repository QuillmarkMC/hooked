#summon shops
#red
summon marker 20 61 19 {Tags:["gameMarker","redShop"]}
execute at @e[type=marker,tag=redShop,limit=1] run setblock ~ ~ ~ ender_chest[facing=east]
execute at @e[type=marker,tag=redShop,limit=1] run summon minecraft:armor_stand ~ ~1 ~ {Invisible:1b,Invulnerable:1b,NoGravity:1b,Marker:1b,CustomName:{"translate":"text.game.shop.floating_text","color":"green"},CustomNameVisible:1b,Tags:["shopName","gameMarker"],equipment:{}}

#blue
summon marker 92 61 19 {Tags:["gameMarker","blueShop"]}
execute at @e[type=marker,tag=blueShop,limit=1] run setblock ~ ~ ~ ender_chest[facing=west]
execute at @e[type=marker,tag=blueShop,limit=1] run summon minecraft:armor_stand ~ ~1 ~ {Invisible:1b,Invulnerable:1b,NoGravity:1b,Marker:1b,CustomName:{"translate":"text.game.shop.floating_text","color":"green"},CustomNameVisible:1b,Tags:["shopName","gameMarker"],equipment:{}}
