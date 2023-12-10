#debug message
execute if score $Debug var matches 1.. run say pudge:game/ability/hook/begin

# @s = attacker
#tag hit target with ID of source player
scoreboard players operation @a[tag=tempReceiverTag,limit=1] hookID = @s entityid
#summon armor stand and tag it with ID of source player
execute at @a[tag=tempReceiverTag,limit=1] run summon armor_stand ~ ~0.5 ~ {Marker:true,Invisible:true,Tags:["tempHookMarkerTag","hookMovementMarker"]}
scoreboard players operation @e[type=armor_stand,tag=tempHookMarkerTag,limit=1] hookID = @a[tag=tempReceiverTag,limit=1] entityid
#set scoreboards of target for maximum hook length
scoreboard players operation @a[tag=tempReceiverTag,limit=1] hookTimer = $HookLength abilityVar

#deal damage to receiver
#tag @s add teamCheckPlayer1
#tag @a[tag=tempReceiverTag,limit=1] add teamCheckPlayer2
#function pudge:general/teams/check_teams
execute unless score @s teamID = @a[tag=tempReceiverTag,limit=1] teamID run scoreboard players operation @a[tag=tempReceiverTag,limit=1] health -= @s hookDamage
execute unless entity @s[tag=tempReceiverTag] run scoreboard players operation @a[tag=tempReceiverTag,limit=1] lastDamagedBy = @s entityid
execute unless score @s teamID = @a[tag=tempReceiverTag,limit=1] teamID if score @a[tag=tempReceiverTag,limit=1] health matches ..0 run function pudge:general/death/count_kill
#lifesteal
execute unless score @s teamID = @a[tag=tempReceiverTag,limit=1] teamID if score @s lifestealAmount matches 1.. run function pudge:game/ability/lifesteal/heal

tag @e[type=armor_stand,tag=tempHookMarkerTag,limit=1] remove tempHookMarkerTag