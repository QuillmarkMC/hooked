function pudge:game/maps/forest/river/kill_power
tellraw @s [{"text": "[!] ","color": "yellow","bold": true},{"translate": "text.game.river.adrenaline.1","color": "white","bold": false},{"translate":"text.game.river.adrenaline.2","color": "yellow","bold": false},{"translate": "text.game.river.adrenaline.3","color": "white","bold": false}]
execute at @s run summon lightning_bolt ~ ~ ~
scoreboard players operation @s adrenalineTimer = $AdrenalineLength river
