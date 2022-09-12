tellraw @s {"text": "You bought The Lion Horn of Stormwind level 4!","color": "green"}
scoreboard players set @s shopItem.Goat 4
tellraw @a [{"text": "[!] ","color": "yellow","bold": true},{"text":"","extra":[{"selector":"@s"}]},{"text": " just bought The Lion Horn of Stormwind level 4, ","color": "white","bold": false},{"text": "what a waste!","color": "dark_red","bold": true}]
scoreboard players operation @s gold -= $GoatCost shop
function pudge:game/gold/update_display
