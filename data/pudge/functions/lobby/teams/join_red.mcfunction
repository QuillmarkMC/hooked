team join red
tellraw @s [{"text": "[!] ","color": "yellow","bold": true},{"text": "You joined the ","color": "white","bold": false},{"text": "RED","color": "red","bold": true},{"text": " team!","color": "white","bold": false}]
execute at @s run playsound entity.villager.celebrate neutral @s ~ ~ ~
advancement revoke @s only pudge:team/join_red