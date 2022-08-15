scoreboard players set #TempTeams var 0
#check if 2 players are on the same team
execute if entity @a[tag=teamCheckPlayer1,limit=1,team=red] run scoreboard players add #TempTeams var 1
execute if entity @a[tag=teamCheckPlayer1,limit=1,team=blue] run scoreboard players remove #TempTeams var 1
execute if entity @a[tag=teamCheckPlayer2,limit=1,team=red] run scoreboard players add #TempTeams var 1
execute if entity @a[tag=teamCheckPlayer2,limit=1,team=blue] run scoreboard players remove #TempTeams var 1
#if TempTeams var = 2 or -2, players are on the same team. If it = 0, they are on opposite teams
tag @a[tag=teamCheckPlayer1,limit=1] remove teamCheckPlayer1
tag @a[tag=teamCheckPlayer2,limit=1] remove teamCheckPlayer2