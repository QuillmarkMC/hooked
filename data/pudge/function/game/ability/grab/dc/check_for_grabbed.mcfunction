#this function is a failsafe; if the player that @s is supposed to be holding disconnects then it needs to end the grab ability to allow them to grab someone else
#called from game/scheduled_timers/dc_players
# @s = a player who should be holding someone

scoreboard players operation $Temp_Player grabID = @s entityid
execute as @a[tag=isGamer] if score @s grabID = $Temp_Player grabID run tag @s add DisconnectCheckTempTag
execute unless entity @a[tag=DisconnectCheckTempTag,limit=1] run tag @s remove holdingPlayer
execute unless entity @a[tag=DisconnectCheckTempTag,limit=1] run advancement grant @s only pudge:inv_change
tag @a[tag=DisconnectCheckTempTag,limit=1] remove DisconnectCheckTempTag