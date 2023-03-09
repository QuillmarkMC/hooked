#called when a player kills themselves with weapon/ability, handles kill credit logic
# @s = receiver
scoreboard players set #SkipDeath death 1
scoreboard players operation #Temp death = @s lastDamagedBy
execute as @a[tag=!tempReceiverTag] if score @s entityid = #Temp death run tag @s add tempSelfDeathAttackerTag
execute as @a[tag=tempSelfDeathAttackerTag,limit=1] run function pudge:general/death/count_kill
scoreboard players set #SkipDeath death 0

#check teams
tag @s add teamCheckPlayer1
tag @a[tag=tempSelfDeathAttackerTag,limit=1] add teamCheckPlayer2
function pudge:general/teams/check_teams

#announce death to attacker and receiver
execute if score #TempTeams var matches 0 run tellraw @a[tag=tempSelfDeathAttackerTag,limit=1] [{"text": "(+) ","color": "green"},{"text":"","extra":[{"selector":"@s"}]},{"text": " just killed themselves, the credit for the kill goes to ","color": "white"},{"text":"","extra":[{"selector":"@a[tag=tempSelfDeathAttackerTag,limit=1]"}]},{"text": " and was awarded ","color": "white"},{"score":{"name":"@s","objective":"bounty"},"color": "gold"},{"text": " gold!","color": "gold"}]
execute if score #TempTeams var matches 0 run tellraw @s [{"text": "(-) ","color": "red"},{"text":"","extra":[{"selector":"@s"}]},{"text": " just killed themselves, the credit for the kill goes to ","color": "white"},{"text":"","extra":[{"selector":"@a[tag=tempSelfDeathAttackerTag,limit=1]"}]},{"text": " and was awarded ","color": "white"},{"score":{"name":"@s","objective":"bounty"},"color": "gold"},{"text": " gold!","color": "gold"}]
execute unless score #TempTeams var matches 0 run tellraw @s [{"text": "(-) ","color": "red"},{"text":"","extra":[{"selector":"@s"}]},{"text": " just killed themselves.","color": "white"}]

tag @a[tag=tempSelfDeathAttackerTag] remove tempSelfDeathAttackerTag