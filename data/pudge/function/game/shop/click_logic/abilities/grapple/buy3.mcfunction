tellraw @s {"translate": "text.game.shop.purchase.grapple.3","color": "green"}
scoreboard players set @s shopItem.Grapple 3
scoreboard players remove @s cdGrappleCurrent 20
scoreboard players operation @s gold -= $GrappleCost shop
function pudge:game/gold/update_display