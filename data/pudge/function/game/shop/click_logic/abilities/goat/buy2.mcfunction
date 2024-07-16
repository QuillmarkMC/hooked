tellraw @s {"translate": "text.game.shop.purchase.goat.2","color": "green"}
scoreboard players set @s shopItem.Goat 2
tellraw @a [{"text": "[!] ","color": "yellow","bold": true},{"text":"","extra":[{"selector":"@s"}],"bold": false},{"translate": "text.game.shop.purchase.goat.waste.2_1","color": "white","bold": false},{"translate": "text.game.shop.purchase.goat.waste.2_2","color": "dark_red","bold": true}]
scoreboard players operation @s gold -= $GoatCost shop
function pudge:game/gold/update_display
