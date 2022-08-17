scoreboard players set #TempTeams1 var 0
#check if 2 players are on the same team
execute if entity @a[tag=teamCheckPlayer1,limit=1,team=red] run scoreboard players add #TempTeams1 var 1
execute if entity @a[tag=teamCheckPlayer1,limit=1,team=blue] run scoreboard players remove #TempTeams1 var 1
execute if entity @a[tag=teamCheckPlayer2,limit=1,team=red] run scoreboard players add #TempTeams1 var 1
execute if entity @a[tag=teamCheckPlayer2,limit=1,team=blue] run scoreboard players remove #TempTeams1 var 1
#if TempTeams var = 2, players are on the same team. If it = 1, no attacker was found. If it = 0, they are on opposite teams
execute if score #TempTeams1 var matches -2..2 run scoreboard players set #TempTeams var 2
execute if score #TempTeams1 var matches -1..1 run scoreboard players set #TempTeams var 1
execute if score #TempTeams1 var matches 0 run scoreboard players set #TempTeams var 0

tag @a[tag=teamCheckPlayer1,limit=1] remove teamCheckPlayer1
tag @a[tag=teamCheckPlayer2,limit=1] remove teamCheckPlayer2