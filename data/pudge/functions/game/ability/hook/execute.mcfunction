#called when a hooked player is hit by a 2nd hook, which instantly kills them

# @s = receiver
tag @s add teamCheckPlayer1
tag @a[tag=tempAttackerTag,limit=1] add teamCheckPlayer2
function pudge:general/teams/check_teams
#if different teams, count kill. if same team, dont count kill but still kill player
execute if score #TempTeams var matches 0 as @a[tag=tempAttackerTag,limit=1] run function pudge:general/death/count_kill
execute unless score #TempTeams var matches 0 run function pudge:general/death/on_death

#playsound
execute as @a at @s run playsound minecraft:game.headshot ambient @s ~ ~ ~ 0.75
#tellraw
execute if score #TempTeams var matches 0 run tellraw @a [{"text":"","extra":[{"selector":"@s"}]},{"text":" just got pwned by ","color":"white"},{"text":"","extra":[{"selector":"@a[tag=tempAttackerTag,limit=1]"}]},{"text":"!"}]
execute unless score #TempTeams var matches 0 run tellraw @a [{"text":"","extra":[{"selector":"@s"}]},{"text":" was just denied by ","color":"white"},{"text":"","extra":[{"selector":"@a[tag=tempAttackerTag,limit=1]"}]},{"text":"!"}]
