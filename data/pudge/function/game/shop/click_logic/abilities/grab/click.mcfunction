scoreboard players set #Temp gold 0
#check if player has enough gold
execute store success score #Temp gold if score @s gold >= $GrabCost shop

#if enough, run correct function (first,second,third... buy)
execute if score @s numUpgrades >= $MaxInventoryUpgrades var unless score @s shopItem.Grab matches 1.. run scoreboard players set #Temp gold -1
execute if score #Temp gold matches 1 if score @s shopItem.Grab matches 5.. run function pudge:game/shop/click_logic/abilities/grab/maxed
execute if score #Temp gold matches 1 if score @s shopItem.Grab matches 4 run function pudge:game/shop/click_logic/abilities/grab/buy5
execute if score #Temp gold matches 1 if score @s shopItem.Grab matches 3 run function pudge:game/shop/click_logic/abilities/grab/buy4
execute if score #Temp gold matches 1 if score @s shopItem.Grab matches 2 run function pudge:game/shop/click_logic/abilities/grab/buy3
execute if score #Temp gold matches 1 if score @s shopItem.Grab matches 1 run function pudge:game/shop/click_logic/abilities/grab/buy2
execute if score #Temp gold matches 1 if score @s shopItem.Grab matches 0 run function pudge:game/shop/click_logic/abilities/grab/buy1

#if not enough, display error
execute if score #Temp gold matches 0 run tellraw @s {"text": "You don't have enough gold!","color": "red"}
#if too many items, display error
execute if score #Temp gold matches -1 run tellraw @s {"text": "You can't buy additional abilities!","color": "red"}
