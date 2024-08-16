tellraw @s {"translate": "text.game.shop.purchase.grab.4","color": "green"}
scoreboard players set @s shopItem.Grab 4
scoreboard players remove @s cdGrabCurrent 40
scoreboard players operation @s gold -= $GrabCost shop
function pudge:game/gold/update_display