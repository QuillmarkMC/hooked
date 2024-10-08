#called when a hooked player is hit by a 2nd hook, which instantly kills them

# @s = receiver
#check for self-execute
execute store success score #Impressive var if entity @s[tag=tempAttackerTag]
#if different teams, count assist
execute unless score @s teamID = @a[tag=tempAttackerTag,limit=1] teamID run function pudge:game/ability/hook/execute_assist
#if different teams, count kill. if same team, dont count kill but still kill player
execute unless score @s teamID = @a[tag=tempAttackerTag,limit=1] teamID as @a[tag=tempAttackerTag,limit=1] run function pudge:general/death/count_kill
execute if score @s teamID = @a[tag=tempAttackerTag,limit=1] teamID run function pudge:general/death/on_death

#playsound
execute unless score #Impressive var matches 1 as @a[scores={announcer=1}] at @s run playsound pudge:game.headshot ambient @s ~ ~ ~ 0.75
execute if score #Impressive var matches 1 as @a[scores={announcer=1}] at @s run playsound pudge:game.impressive ambient @s ~ ~ ~ 0.75
execute unless score #Impressive var matches 1 as @a[scores={announcer=2}] at @s run playsound pudge:game.headshot.redmage ambient @s ~ ~ ~ 0.75
execute if score #Impressive var matches 1 as @a[scores={announcer=2}] at @s run playsound pudge:game.impressive.redmage ambient @s ~ ~ ~ 0.75
#tellraw
execute unless score @s teamID = @a[tag=tempAttackerTag,limit=1] teamID run tellraw @a [{"text": "[!] ","color": "yellow","bold": true},{"text":"","extra":[{"selector":"@s"}],"bold": false},{"translate":"text.game.hook.execute.pwn.1","color":"white","bold": false},{"text":"","extra":[{"selector":"@a[tag=tempAttackerTag,limit=1]"}],"bold": false},{"translate":"text.game.hook.execute.pwn.2","bold": false,"color": "white"}]
execute if score @s teamID = @a[tag=tempAttackerTag,limit=1] teamID run tellraw @a [{"text": "[!] ","color": "yellow","bold": true},{"text":"","extra":[{"selector":"@s"}],"bold": false},{"translate":"text.game.hook.execute.deny.1","color":"white","bold": false},{"text":"","extra":[{"selector":"@a[tag=tempAttackerTag,limit=1]"}],"bold": false},{"translate":"text.game.hook.execute.deny.2","bold": false,"color": "white"}]

scoreboard players reset #Impressive var