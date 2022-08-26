function pudge:game/maps/forest/river/kill_power
tellraw @s [{"text": "[!] ","color": "yellow","bold": true},{"text": "Prepare for Hookshot Rapid Fire!","color": "white","bold": false}]
scoreboard players operation @s rapidFireChargeTimer = $RapidFireCharge river