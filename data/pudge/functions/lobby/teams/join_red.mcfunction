scoreboard players set #Temp lobbyvar 0
execute store success score #Temp lobbyvar if entity @s[team=red]
execute if score #Temp lobbyvar matches 1 run team join spectator
execute if score #Temp lobbyvar matches 0 run team join red

execute if score #Temp lobbyvar matches 1 run tellraw @s [{"text": "[!] ","color": "yellow","bold": true},{"text": "You left your team!","color": "white","bold": false}]
execute if score #Temp lobbyvar matches 0 run tellraw @s [{"text": "[!] ","color": "yellow","bold": true},{"text": "You joined the ","color": "white","bold": false},{"text": "RED","color": "red","bold": true},{"text": " team!","color": "white","bold": false}]
execute at @s run playsound entity.villager.celebrate neutral @s ~ ~ ~
advancement revoke @s only pudge:team/join_red