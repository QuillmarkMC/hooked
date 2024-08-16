tellraw @s {"translate": "text.game.shop.purchase.goat.3","color": "green"}
scoreboard players set @s shopItem.Goat 3
tellraw @a [{"text": "[!] ","color": "yellow","bold": true},{"text":"","extra":[{"selector":"@s"}],"bold": false},{"translate": "text.game.shop.purchase.goat.waste.3_1","color": "white","bold": false},{"translate": "text.game.shop.purchase.goat.waste.3_2","color": "dark_red","bold": true}]
scoreboard players operation @s gold -= $GoatCost shop
function pudge:game/gold/update_display
