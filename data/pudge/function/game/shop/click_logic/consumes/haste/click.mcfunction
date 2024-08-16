scoreboard players set #Temp gold 0
#check if player has enough gold
execute store success score #Temp gold if score @s gold >= $HasteCost shop
#if not enough gold, display error
execute if score #Temp gold matches 0 run tellraw @s {"translate": "text.game.shop.purchase.error.gold","color": "red"}
#if enough, run
execute if score #Temp gold matches 1 run function pudge:game/shop/click_logic/consumes/haste/buy