tellraw @s {"translate": "text.game.shop.purchase.retract.4","color": "green"}
scoreboard players set @s shopItem.Retract 4
scoreboard players operation @s gold -= $RetractCost shop
function pudge:game/gold/update_display