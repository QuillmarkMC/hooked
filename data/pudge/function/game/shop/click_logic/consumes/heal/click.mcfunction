scoreboard players set #Temp gold 0
#check if player has enough gold
execute store success score #Temp gold if score @s gold >= $HealCost shop
#check current health, if full dont allow purchase
execute if score @s health >= @s maxHealth run scoreboard players set #Temp gold -1
execute if score #Temp gold matches -1 run tellraw @s {"text": "You are already full health!","color": "red"}
#if not enough gold, display error
execute if score #Temp gold matches 0 run tellraw @s {"translate": "text.game.shop.purchase.error.gold","color": "red"}
#if enough, run
execute if score #Temp gold matches 1 run function pudge:game/shop/click_logic/consumes/heal/buy