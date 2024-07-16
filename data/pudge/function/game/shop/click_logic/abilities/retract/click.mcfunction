scoreboard players set #Temp gold 0
#check if player has enough gold
execute store success score #Temp gold if score @s gold >= $RetractCost shop

#if enough, run correct function (first,second,third... buy)
execute if score @s numUpgrades >= $MaxInventoryUpgrades var unless score @s shopItem.Retract matches 1.. run scoreboard players set #Temp gold -1
execute if score #Temp gold matches 1 if score @s shopItem.Retract matches 5.. run function pudge:game/shop/click_logic/abilities/retract/maxed
execute if score #Temp gold matches 1 if score @s shopItem.Retract matches 4 run function pudge:game/shop/click_logic/abilities/retract/buy5
execute if score #Temp gold matches 1 if score @s shopItem.Retract matches 3 run function pudge:game/shop/click_logic/abilities/retract/buy4
execute if score #Temp gold matches 1 if score @s shopItem.Retract matches 2 run function pudge:game/shop/click_logic/abilities/retract/buy3
execute if score #Temp gold matches 1 if score @s shopItem.Retract matches 1 run function pudge:game/shop/click_logic/abilities/retract/buy2
execute if score #Temp gold matches 1 if score @s shopItem.Retract matches 0 run function pudge:game/shop/click_logic/abilities/retract/buy1

#if not enough, display error
execute if score #Temp gold matches 0 run tellraw @s {"translate": "text.game.shop.purchase.error.gold","color": "red"}
#if too many items, display error
execute if score #Temp gold matches -1 run tellraw @s {"translate": "text.game.shop.purchase.error.slots","color": "red"}
