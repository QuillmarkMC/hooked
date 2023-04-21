#called when a hooked player is hit by a 2nd hook, which instantly kills them

# @s = receiver
#tag @s add teamCheckPlayer1
#tag @a[tag=tempAttackerTag,limit=1] add teamCheckPlayer2
#function pudge:general/teams/check_teams
#if different teams, count assist
execute unless score @s teamID = @a[tag=tempAttackerTag,limit=1] teamID run function pudge:game/ability/hook/execute_assist
#if different teams, count kill. if same team, dont count kill but still kill player
execute unless score @s teamID = @a[tag=tempAttackerTag,limit=1] teamID as @a[tag=tempAttackerTag,limit=1] run function pudge:general/death/count_kill
execute if score @s teamID = @a[tag=tempAttackerTag,limit=1] teamID run function pudge:general/death/on_death

#playsound
execute unless entity @s[tag=tempAttackerTag] as @a[scores={announcer=1}] at @s run playsound pudge:game.headshot ambient @s ~ ~ ~ 0.75
execute if entity @s[tag=tempAttackerTag] as @a[scores={announcer=1}] at @s run playsound pudge:game.impressive ambient @s ~ ~ ~ 0.75
execute unless entity @s[tag=tempAttackerTag] as @a[scores={announcer=2}] at @s run playsound pudge:game.headshot.redmage ambient @s ~ ~ ~ 0.75
execute if entity @s[tag=tempAttackerTag] as @a[scores={announcer=2}] at @s run playsound pudge:game.impressive.redmage ambient @s ~ ~ ~ 0.75
#tellraw
execute unless score @s teamID = @a[tag=tempAttackerTag,limit=1] teamID run tellraw @a [{"text": "[!] ","color": "yellow","bold": true},{"text":"","extra":[{"selector":"@s"}],"bold": false},{"text":" just got pwned by ","color":"white","bold": false},{"text":"","extra":[{"selector":"@a[tag=tempAttackerTag,limit=1]"}],"bold": false},{"text":"!","bold": false,"color": "white"}]
execute if score @s teamID = @a[tag=tempAttackerTag,limit=1] teamID run tellraw @a [{"text": "[!] ","color": "yellow","bold": true},{"text":"","extra":[{"selector":"@s"}],"bold": false},{"text":" was just denied by ","color":"white","bold": false},{"text":"","extra":[{"selector":"@a[tag=tempAttackerTag,limit=1]"}],"bold": false},{"text":"!","bold": false,"color": "white"}]
