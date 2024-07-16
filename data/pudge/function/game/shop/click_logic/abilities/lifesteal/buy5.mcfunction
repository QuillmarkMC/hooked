tellraw @s {"translate": "text.game.shop.purchase.lifesteal.5","color": "green"}
scoreboard players set @s shopItem.Lifesteal 5
scoreboard players add @s lifestealRegen 20
scoreboard players operation @s gold -= $LifestealCost shop
function pudge:game/gold/update_display