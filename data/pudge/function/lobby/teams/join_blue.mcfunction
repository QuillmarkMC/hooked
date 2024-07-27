scoreboard players set #Temp lobbyvar 0
execute store success score #Temp lobbyvar if entity @s[team=blue]
execute if score #Temp lobbyvar matches 1 run team leave @s
execute if score #Temp lobbyvar matches 0 run team join blue

execute if score #Temp lobbyvar matches 1 run tellraw @s [{"text": "[!] ","color": "yellow","bold": true},{"translate": "text.lobby.team.leave","color": "white","bold": false}]
execute if score #Temp lobbyvar matches 0 run tellraw @s [{"text": "[!] ","color": "yellow","bold": true},{"translate": "text.lobby.team.join.blue.1","color": "white","bold": false},{"translate": "text.lobby.team.join.blue.2","color": "blue","bold": true},{"translate": "text.lobby.team.join.blue.3","color": "white","bold": false}]
execute at @s run playsound entity.villager.celebrate neutral @s ~ ~ ~

execute if score #Temp lobbyvar matches 1 run scoreboard players reset @s teamID
execute if score #Temp lobbyvar matches 0 run scoreboard players operation @s teamID = $Blue teamID