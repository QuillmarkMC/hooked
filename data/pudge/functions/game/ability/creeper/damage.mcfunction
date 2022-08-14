#debug message
execute if score $Debug var matches 1.. run say game/ability/creeper/explode.mcfunction

# @s = receiver of damage from creeper ability explosion
tag @s add tempReceiverTag

#deal damage to receiver
tag @s add teamCheckPlayer1
tag @a[tag=tempAttackerTag,limit=1] add teamCheckPlayer2
function pudge:general/teams/check_teams
execute if score #TempTeams var matches 0 run scoreboard players operation @s health -= @s creeperDamage
execute if score #TempTeams var matches 0 if score @s health matches ..0 as @a[tag=tempAttackerTag,limit=1] run function pudge:general/death/count_kill

tag @s remove tempReceiverTag