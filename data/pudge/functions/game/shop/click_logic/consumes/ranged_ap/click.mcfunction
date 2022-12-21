scoreboard players set #Temp gold 0
#check if player has enough gold
execute store success score #Temp gold if score @s gold >= $RangedAPCost shop
#check if player already has a ranged AP potion active
execute if score @s rangedAPTimer matches 1.. run scoreboard players set #Temp gold -1
#if not enough gold, display error
execute if score #Temp gold matches 0 run tellraw @s {"text": "You don't have enough gold!","color": "red"}
#if another potion is already active, display error
execute if score #Temp gold matches -1 run tellraw @s {"text": "You already have a Ranged Attack Power Potion active! Wait for it to expire before buying another!","color": "red"}
#if enough, run
execute if score #Temp gold matches 1 run function pudge:game/shop/click_logic/consumes/ranged_ap/buy