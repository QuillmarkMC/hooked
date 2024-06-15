scoreboard players set #Temp gold 0
#check if player has enough gold
execute store success score #Temp gold if score @s gold >= $HookCDCost shop
#if not enough, display error
execute if score #Temp gold matches 0 run tellraw @s {"text": "You don't have enough gold!","color": "red"}
#if enough, run correct function (first,second,third... buy)
execute if score #Temp gold matches 1 if score @s shopItem.Hook.CD matches 5.. run function pudge:game/shop/click_logic/stats/hook_cd/maxed
execute if score #Temp gold matches 1 if score @s shopItem.Hook.CD matches 4 run function pudge:game/shop/click_logic/stats/hook_cd/buy5
execute if score #Temp gold matches 1 if score @s shopItem.Hook.CD matches 3 run function pudge:game/shop/click_logic/stats/hook_cd/buy4
execute if score #Temp gold matches 1 if score @s shopItem.Hook.CD matches 2 run function pudge:game/shop/click_logic/stats/hook_cd/buy3
execute if score #Temp gold matches 1 if score @s shopItem.Hook.CD matches 1 run function pudge:game/shop/click_logic/stats/hook_cd/buy2
execute if score #Temp gold matches 1 if score @s shopItem.Hook.CD matches 0 run function pudge:game/shop/click_logic/stats/hook_cd/buy1