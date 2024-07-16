scoreboard players set #Temp gold 0
#check if player has enough gold
execute store success score #Temp gold if score @s gold >= $ExtraHealthCost shop
#if not enough, display error
execute if score #Temp gold matches 0 run tellraw @s {"translate": "text.game.shop.purchase.error.gold","color": "red"}
#if enough, run correct function (first,second,third... buy)
execute if score #Temp gold matches 1 if score @s shopItem.ExtraHealth matches 5.. run function pudge:game/shop/click_logic/stats/extra_health/maxed
execute if score #Temp gold matches 1 if score @s shopItem.ExtraHealth matches 4 run function pudge:game/shop/click_logic/stats/extra_health/buy5
execute if score #Temp gold matches 1 if score @s shopItem.ExtraHealth matches 3 run function pudge:game/shop/click_logic/stats/extra_health/buy4
execute if score #Temp gold matches 1 if score @s shopItem.ExtraHealth matches 2 run function pudge:game/shop/click_logic/stats/extra_health/buy3
execute if score #Temp gold matches 1 if score @s shopItem.ExtraHealth matches 1 run function pudge:game/shop/click_logic/stats/extra_health/buy2
execute if score #Temp gold matches 1 if score @s shopItem.ExtraHealth matches 0 run function pudge:game/shop/click_logic/stats/extra_health/buy1
