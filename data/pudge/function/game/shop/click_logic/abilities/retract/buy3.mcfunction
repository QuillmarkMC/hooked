tellraw @s {"translate": "text.game.shop.purchase.retract.3","color": "green"}
scoreboard players set @s shopItem.Retract 3
scoreboard players operation @s gold -= $RetractCost shop
function pudge:game/gold/update_display