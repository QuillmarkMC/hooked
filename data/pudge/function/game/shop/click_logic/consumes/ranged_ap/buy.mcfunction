tellraw @s {"translate": "text.game.shop.purchase.ranged_ap","color": "green"}
function pudge:game/consume/ranged_ap/start
scoreboard players operation @s gold -= $RangedAPCost shop
function pudge:game/gold/update_display
