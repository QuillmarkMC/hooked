scoreboard players set #Temp gold 0
#check if player has enough gold
execute store success score #Temp gold if score @s gold >= $BounceCost shop
#if not enough, display error
execute if score #Temp gold matches 0 run tellraw @s {"text": "You don't have enough gold!","color": "red"}
#if enough, run correct function (first,second,third... buy)
execute if score #Temp gold matches 1 if score @s shopItem.Bounce matches 5.. run function pudge:game/shop/click_logic/stats/bounce/maxed
execute if score #Temp gold matches 1 if score @s shopItem.Bounce matches 4 run function pudge:game/shop/click_logic/stats/bounce/buy5
execute if score #Temp gold matches 1 if score @s shopItem.Bounce matches 3 run function pudge:game/shop/click_logic/stats/bounce/buy4
execute if score #Temp gold matches 1 if score @s shopItem.Bounce matches 2 run function pudge:game/shop/click_logic/stats/bounce/buy3
execute if score #Temp gold matches 1 if score @s shopItem.Bounce matches 1 run function pudge:game/shop/click_logic/stats/bounce/buy2
execute if score #Temp gold matches 1 if score @s shopItem.Bounce matches 0 run function pudge:game/shop/click_logic/stats/bounce/buy1
