tellraw @s {"translate": "text.game.shop.purchase.goat.5","color": "green"}
scoreboard players set @s shopItem.Goat 5
tellraw @a [{"text": "[!] ","color": "yellow","bold": true},{"text":"","extra":[{"selector":"@s"}],"bold": false},{"translate": "text.game.shop.purchase.goat.waste.5_1","color": "white","bold": false},{"translate": "text.game.shop.purchase.goat.waste.5_2","color": "dark_red","bold": true}]
scoreboard players operation @s gold -= $GoatCost shop
function pudge:game/gold/update_display
