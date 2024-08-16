tellraw @s {"translate": "text.game.shop.purchase.totem.3","color": "green"}
scoreboard players set @s shopItem.Totem 3
scoreboard players set @s totemChance 20
scoreboard players operation @s gold -= $TotemCost shop
function pudge:game/gold/update_display