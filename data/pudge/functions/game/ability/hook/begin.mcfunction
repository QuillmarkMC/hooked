#debug message
execute if score $Debug var matches 1.. run say game/ability/hook/begin.mcfunction

# @s = attacker
#tag hit target with ID of source player
scoreboard players operation @a[tag=tempReceiverTag,limit=1] hookID = @s entityid
#summon marker and tag it with ID of source player
execute at @a[tag=tempReceiverTag,limit=1] run summon marker ~ ~ ~ {Tags:["tempHookMarkerTag","hookMovementMarker"]}
scoreboard players operation @e[type=marker,tag=tempHookMarkerTag,limit=1] hookID = @a[tag=tempReceiverTag,limit=1] entityid
#set scoreboards of target for maximum hook length
scoreboard players operation @a[tag=tempReceiverTag,limit=1] hookTimer = $HookLength abilityVar
#apply stun (attribute movementspeed)
attribute @a[tag=tempReceiverTag,limit=1] generic.movement_speed base set 0

#deal damage to receiver
tag @s add teamCheckPlayer1
tag @a[tag=tempReceiverTag,limit=1] add teamCheckPlayer2
function pudge:general/teams/check_teams
execute if score #TempTeams var matches 0 run scoreboard players operation @a[tag=tempReceiverTag,limit=1] health -= @s hookDamage
execute if score #TempTeams var matches 0 if score @a[tag=tempReceiverTag,limit=1] health matches ..0 run function pudge:general/death/count_kill
#lifesteal
execute if score #TempTeams var matches 0 if score @s lifestealAmount matches 1.. run function pudge:game/ability/lifesteal/heal

tag @e[type=marker,tag=tempHookMarkerTag,limit=1] remove tempHookMarkerTag