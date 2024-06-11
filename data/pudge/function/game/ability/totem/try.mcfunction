#called when a player who has the totem ability is hooked
#determine if totem will trigger
# @s = receiver

#this command needs to be run outside of this function before its called
#scoreboard players set #TotemTest totemChance 0

execute if score @s totemChance matches 10 if predicate pudge:10_percent run scoreboard players set #TotemTest totemChance 1
execute if score @s totemChance matches 15 if predicate pudge:15_percent run scoreboard players set #TotemTest totemChance 1
execute if score @s totemChance matches 20 if predicate pudge:20_percent run scoreboard players set #TotemTest totemChance 1
execute if score @s totemChance matches 25 if predicate pudge:25_percent run scoreboard players set #TotemTest totemChance 1
execute if score @s totemChance matches 30 if predicate pudge:30_percent run scoreboard players set #TotemTest totemChance 1
execute if score @s totemChance matches 100 run scoreboard players set #TotemTest totemChance 1

#dont trigger on teammate hook
#tag @a[tag=tempAttackerTag,limit=1] add teamCheckPlayer1
#tag @a[tag=tempReceiverTag,limit=1] add teamCheckPlayer2
#function pudge:general/teams/check_teams
execute if score @s teamID = @a[tag=tempAttackerTag,limit=1] teamID run scoreboard players set #TotemTest totemChance 0

#automatically fail if totem on cooldown
execute if score @s cdTotem matches 1.. run scoreboard players set #TotemTest totemChance 0

execute if score #TotemTest totemChance matches 1 run function pudge:game/ability/totem/give_totem