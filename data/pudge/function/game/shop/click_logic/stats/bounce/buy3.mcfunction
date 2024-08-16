tellraw @s {"translate": "text.game.shop.purchase.bounce.3","color": "green"}
scoreboard players set @s shopItem.Bounce 3
scoreboard players add @s bounceCount 1
scoreboard players operation @s gold -= $BounceCost shop
function pudge:game/gold/update_display