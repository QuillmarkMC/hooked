function pudge:game/maps/forest/river/kill_power
tellraw @s [{"text": "[!] ","color": "yellow","bold": true},{"text": "10 seconds until self destruction...","color": "white","bold": false},{"text": " AHHHHHH!","color": "dark_red","bold": false}]
scoreboard players operation @s suicideTimer = $SuicideTime river