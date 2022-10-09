#called when a hooked player is hit by a 2nd hook, which instantly kills them

# @s = receiver
tag @s add teamCheckPlayer1
tag @a[tag=tempAttackerTag,limit=1] add teamCheckPlayer2
function pudge:general/teams/check_teams
#if different teams, count assist
execute if score #TempTeams var matches 0 run function pudge:game/ability/hook/execute_assist
#if different teams, count kill. if same team, dont count kill but still kill player
execute if score #TempTeams var matches 0 as @a[tag=tempAttackerTag,limit=1] run function pudge:general/death/count_kill
execute unless score #TempTeams var matches 0 run function pudge:general/death/on_death

#playsound
execute as @a at @s run playsound minecraft:game.headshot ambient @s ~ ~ ~ 0.75
#tellraw
execute if score #TempTeams var matches 0 run tellraw @a [{"text": "[!] ","color": "yellow","bold": true},{"text":"","extra":[{"selector":"@s"}],"bold": false},{"text":" just got pwned by ","color":"white","bold": false},{"text":"","extra":[{"selector":"@a[tag=tempAttackerTag,limit=1]"}],"bold": false},{"text":"!","bold": false,"color": "white"}]
execute unless score #TempTeams var matches 0 run tellraw @a [{"text": "[!] ","color": "yellow","bold": true},{"text":"","extra":[{"selector":"@s"}],"bold": false},{"text":" was just denied by ","color":"white","bold": false},{"text":"","extra":[{"selector":"@a[tag=tempAttackerTag,limit=1]"}],"bold": false},{"text":"!","bold": false,"color": "white"}]
