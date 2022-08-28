scoreboard players set #Temp gold 0
#check if player has enough gold
execute store success score #Temp gold if score @s gold >= $KnockbackCost shop
#if not enough, display error
execute if score #Temp gold matches 0 run tellraw @s {"text": "You don't have enough gold!","color": "red"}
#if enough, run correct function (first,second,third... buy)
execute if score @s numUpgrades >= $MaxInventoryUpgrades var unless score @s shopItem.Knockback matches 1.. unless score #Temp gold matches 0 run scoreboard players set #Temp gold -1
execute if score #Temp gold matches 1 if score @s shopItem.Knockback matches 5.. run function pudge:game/shop/click_logic/abilities/knockback/maxed
execute if score #Temp gold matches 1 if score @s shopItem.Knockback matches 4 run function pudge:game/shop/click_logic/abilities/knockback/buy5
execute if score #Temp gold matches 1 if score @s shopItem.Knockback matches 3 run function pudge:game/shop/click_logic/abilities/knockback/buy4
execute if score #Temp gold matches 1 if score @s shopItem.Knockback matches 2 run function pudge:game/shop/click_logic/abilities/knockback/buy3
execute if score #Temp gold matches 1 if score @s shopItem.Knockback matches 1 run function pudge:game/shop/click_logic/abilities/knockback/buy2
execute if score #Temp gold matches 1 if score @s shopItem.Knockback matches 0 run function pudge:game/shop/click_logic/abilities/knockback/buy1

execute if score #Temp gold matches -1 run tellraw @s {"text": "You can't buy additional items!","color": "red"}
