scoreboard players set #Temp lobbyvar 0
execute store success score #Temp lobbyvar if entity @s[team=blue]
execute if score #Temp lobbyvar matches 1 run team leave @s
execute if score #Temp lobbyvar matches 0 run team join blue

execute if score #Temp lobbyvar matches 1 run tellraw @s [{"text": "[!] ","color": "yellow","bold": true},{"text": "You left your team!","color": "white","bold": false}]
execute if score #Temp lobbyvar matches 0 run tellraw @s [{"text": "[!] ","color": "yellow","bold": true},{"text": "You joined the ","color": "white","bold": false},{"text": "BLUE","color": "blue","bold": true},{"text": " team!","color": "white","bold": false}]
execute at @s run playsound entity.villager.celebrate neutral @s ~ ~ ~
