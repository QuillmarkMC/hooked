tellraw @s {"translate": "text.game.shop.purchase.retract.5","color": "green"}
scoreboard players set @s shopItem.Retract 5
scoreboard players operation @s gold -= $RetractCost shop
function pudge:game/gold/update_display