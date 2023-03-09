#debug message
execute if score $Debug var matches 1.. run say game/ability/creeper/damage.mcfunction

# @s = receiver of damage from creeper ability explosion
tag @s add tempReceiverTag

#deal damage to receiver
#tag @s add teamCheckPlayer1
#tag @a[tag=tempAttackerTag,limit=1] add teamCheckPlayer2
#function pudge:general/teams/check_teams
scoreboard players operation @s health -= @a[tag=tempAttackerTag,limit=1] creeperDamage
execute unless entity @s[tag=tempAttackerTag] run scoreboard players operation @s lastDamagedBy = @a[tag=tempAttackerTag,limit=1] entityid
execute unless score @s teamID = @a[tag=tempAttackerTag,limit=1] teamID if score @s health matches ..0 as @a[tag=tempAttackerTag,limit=1] run function pudge:general/death/count_kill
execute if score @s teamID = @a[tag=tempAttackerTag,limit=1] teamID if score @s health matches ..0 run function pudge:general/death/on_death

tag @s remove tempReceiverTag