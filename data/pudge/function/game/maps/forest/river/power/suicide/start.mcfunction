function pudge:game/maps/forest/river/kill_power
tellraw @s [{"text": "[!] ","color": "yellow","bold": true},{"translate": "text.game.river.suicide.1","color": "white","bold": false},{"translate": "text.game.river.suicide.2","color": "dark_red","bold": false}]
scoreboard players operation @s suicideTimer = $SuicideTime river