tellraw @s {"translate": "text.game.shop.purchase.totem.4","color": "green"}
scoreboard players set @s shopItem.Totem 4
scoreboard players set @s totemChance 25
scoreboard players operation @s gold -= $TotemCost shop
function pudge:game/gold/update_display