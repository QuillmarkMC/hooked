schedule clear pudge:game/maps/forest/river/power/hell/red
schedule clear pudge:game/maps/forest/river/power/hell/music_loop

tag @a[gamemode=adventure,tag=isGamer] add hellWinner
execute store result score #Temp3 river if entity @a[tag=hellWinner]

scoreboard players operation #Temp gold = $HellReward river
scoreboard players operation #Temp gold /= #Temp3 river

execute if score #Temp3 river matches 0 run tellraw @a [{"text": "[!] ","color": "yellow","bold": true},{"translate": "text.game.river.deathmatch.win.none.1","color": "white","bold": false},{"translate": "text.game.river.deathmatch.win.none.2","color": "dark_red","bold": false}]
execute if score #Temp3 river matches 1 run tellraw @a [{"text": "[!] ","color": "yellow","bold": true},{"text":"","extra":[{"selector":"@a[tag=hellWinner]"}],"bold": false},{"translate": "text.game.river.deathmatch.win.solo.1","color": "white","bold": false},{"score":{"name":"#Temp","objective":"gold"},"color": "gold","bold": false},{"translate": "text.game.river.deathmatch.win.solo.2","color": "gold","bold": false}]
execute if score #Temp3 river matches 2.. run tellraw @a [{"text": "[!] ","color": "yellow","bold": true},{"text":"","extra":[{"selector":"@a[tag=hellWinner]"}],"bold": false},{"translate": "text.game.river.deathmatch.win.group.1","color": "white","bold": false},{"score":{"name":"#Temp","objective":"gold"},"color": "gold","bold": false},{"translate": "text.game.river.deathmatch.win.group.2","color": "gold","bold": false}]
scoreboard players operation @a[tag=hellWinner] gold += #Temp gold
execute as @a[tag=hellWinner] run function pudge:game/gold/update_display

scoreboard players set $HellActive river 0

#enable shops
execute at @e[type=marker,tag=redShop,limit=1] run setblock ~ ~ ~ ender_chest[facing=east]
execute at @e[type=marker,tag=blueShop,limit=1] run setblock ~ ~ ~ ender_chest[facing=west]
execute as @e[type=armor_stand,tag=shopName] run data merge entity @s {CustomName:{"translate":"text.game.shop.floating_text","color":"green"}}

execute as @a[tag=deadHell] run function pudge:general/death/revive
tag @a remove deadHell

tag @a remove hellWinner

function pudge:game/maps/forest/river/power/hell/black
#schedule new song
schedule function pudge:game/music/generate 17t