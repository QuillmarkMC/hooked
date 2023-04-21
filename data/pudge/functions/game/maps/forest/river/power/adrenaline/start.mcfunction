function pudge:game/maps/forest/river/kill_power
tellraw @s [{"text": "[!] ","color": "yellow","bold": true},{"text": "You just activated an ","color": "white","bold": false},{"text":"Adrenaline Rush!","color": "yellow","bold": false},{"text": " All of your cooldowns will recharge 3 times faster!","color": "white","bold": false}]
execute at @s run summon lightning_bolt ~ ~ ~
scoreboard players operation @s adrenalineTimer = $AdrenalineLength river
