#called from pudge:game/tick
# @s = player who is grabbed
# @a[tag=tempGrabTag] = player who used grab

scoreboard players operation $Temp_Player grabID = @s grabID
execute as @a[tag=isGamer] if score @s entityid = $Temp_Player grabID run tag @s add tempGrabTag
execute as @e[type=armor_stand,tag=grabHoldingMarker] if score @s grabID = $Temp_Player grabID run tag @s add tempGrabTag

#check teams
#tag @s add teamCheckPlayer1
#tag @a[tag=tempGrabTag,limit=1] add teamCheckPlayer2
#function pudge:general/teams/check_teams

scoreboard players set #TempGrabEnd grabID 0
#if grabbed player dies, end effect
execute if entity @s[tag=dead] run scoreboard players set #TempGrabEnd grabID 1
#if grabbing player dies, end effect
execute as @a[tag=tempGrabTag,limit=1] if entity @s[tag=dead] run scoreboard players set #TempGrabEnd grabID 1
#if grabbing player disconnected, end effect
execute unless entity @a[tag=tempGrabTag,limit=1] run scoreboard players set #TempGrabEnd grabID 1
#end if teammate dismounted
scoreboard players set #TempGrabDismountCheck grabID 0
execute on vehicle if entity @s run scoreboard players set #TempGrabDismountCheck grabID 1
execute if score @s teamID = @a[tag=tempGrabTag,limit=1] teamID unless score #TempGrabDismountCheck grabID matches 1 run scoreboard players set #TempGrabEnd grabID 1
#teleport armor stand to grabber
execute at @a[tag=tempGrabTag,limit=1] positioned ~ ~2.25 ~ run tp @e[type=armor_stand,tag=tempGrabTag,limit=1] ~ ~ ~
#force enemy to ride armor stand
execute unless score @s teamID = @a[tag=tempGrabTag,limit=1] teamID run ride @s mount @e[type=armor_stand,tag=tempGrabTag,limit=1]

tag @e[type=armor_stand,tag=tempGrabTag,limit=1] remove tempGrabTag

#call end function based on earlier checks
execute if score #TempGrabEnd grabID matches 1 run scoreboard players set #PlaceGrabOnCooldown cdGrab 1
execute if score #TempGrabEnd grabID matches 1 run function pudge:game/ability/grab/end