tellraw @s {"translate": "text.game.shop.purchase.lifesteal.4","color": "green"}
scoreboard players set @s shopItem.Lifesteal 4
scoreboard players add @s lifestealAmount 10
scoreboard players operation @s gold -= $LifestealCost shop
function pudge:game/gold/update_display