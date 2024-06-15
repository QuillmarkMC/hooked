scoreboard players set #Temp gold 0
#check if player has enough gold
execute store success score #Temp gold if score @s gold >= $HookDamageCost shop
#if not enough, display error
execute if score #Temp gold matches 0 run tellraw @s {"text": "You don't have enough gold!","color": "red"}
#if enough, run correct function (first,second,third... buy)
execute if score #Temp gold matches 1 if score @s shopItem.Hook.Damage matches 5.. run function pudge:game/shop/click_logic/stats/hook_damage/maxed
execute if score #Temp gold matches 1 if score @s shopItem.Hook.Damage matches 4 run function pudge:game/shop/click_logic/stats/hook_damage/buy5
execute if score #Temp gold matches 1 if score @s shopItem.Hook.Damage matches 3 run function pudge:game/shop/click_logic/stats/hook_damage/buy4
execute if score #Temp gold matches 1 if score @s shopItem.Hook.Damage matches 2 run function pudge:game/shop/click_logic/stats/hook_damage/buy3
execute if score #Temp gold matches 1 if score @s shopItem.Hook.Damage matches 1 run function pudge:game/shop/click_logic/stats/hook_damage/buy2
execute if score #Temp gold matches 1 if score @s shopItem.Hook.Damage matches 0 run function pudge:game/shop/click_logic/stats/hook_damage/buy1