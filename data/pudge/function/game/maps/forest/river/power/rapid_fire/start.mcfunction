function pudge:game/maps/forest/river/kill_power
tellraw @s [{"text": "[!] ","color": "yellow","bold": true},{"text": "Prepare for Hookshot ","color": "white","bold": false},{"text": "Rapid Fire!","color": "blue","bold": false}]
scoreboard players operation @s rapidFireChargeTimer = $RapidFireCharge river