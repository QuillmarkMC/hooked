function pudge:game/maps/forest/river/kill_power
tellraw @s [{"text": "[!] ","color": "yellow","bold": true},{"translate": "text.game.river.rapid_fire.1","color": "white","bold": false},{"translate": "text.game.river.rapid_fire.2","color": "blue","bold": false}]
scoreboard players operation @s rapidFireChargeTimer = $RapidFireCharge river