function pudge:game/maps/forest/river/kill_power
tellraw @s [{"text": "[!] ","color": "yellow","bold": true},{"text": "You just gained temporary flight! Take to the skies!","color": "white","bold": false}]
scoreboard players operation @s elytraTimer = $ElytraLength river
#TSF respawn sound
execute at @s run playsound pudge:game.ability.elytra ambient @s
advancement grant @s only pudge:inv_change