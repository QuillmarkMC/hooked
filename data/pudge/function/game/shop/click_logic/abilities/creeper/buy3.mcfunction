tellraw @s {"translate": "text.game.shop.purchase.creeper.3","color": "green"}
scoreboard players set @s shopItem.Creeper 3
scoreboard players add @s creeperExplosion 1
scoreboard players operation @s gold -= $CreeperCost shop
function pudge:game/gold/update_display

