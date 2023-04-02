#called from pudge:game/tick
# @s = player who is launched
# @e[tag=tempGrabTag] = arrow they should be riding

#debug message
execute if score $Debug var matches 1.. run say pudge:game/ability/grab/launch/tick

scoreboard players operation $Temp_Player launchID = @s entityid
execute as @e[type=arrow,tag=hookArrow] if score @s launchID = $Temp_Player launchID run tag @s add tempLaunchArrowTag

scoreboard players set #TempEndLaunch launchID 0
#if player dies, end effect
execute if entity @s[tag=dead] run scoreboard players set #TempEndLaunch launchID 1
#if player is hooked, end effect
execute if score @s hookID matches 1.. run scoreboard players set #TempEndLaunch launchID 1
#if arrow lands, end effect
execute if entity @e[type=arrow,tag=tempLaunchArrowTag,limit=1,nbt={inGround:true}] run scoreboard players set #TempEndLaunch launchID 1
#if arrow doesnt exist (hits an entity), end effect
execute unless entity @e[type=arrow,tag=tempLaunchArrowTag,limit=1] run scoreboard players set #TempEndLaunch launchID 1
#if player dismounted (and is allowed to dismount), end effect
scoreboard players set #TempLaunchDismountCheck launchID 0
execute on vehicle if entity @s run scoreboard players set #TempLaunchDismountCheck launchID 1
#execute if entity @s[tag=AllowDismount] unless score #TempLaunchDismountCheck launchID matches 1 run scoreboard players set #TempEndLaunch launchID 1

tag @e[type=arrow,tag=tempLaunchArrowTag,limit=1] remove tempLaunchArrowTag

execute if score #TempEndLaunch launchID matches 0 run function pudge:game/ability/grab/launch/mount_arrow
execute if score #TempEndLaunch launchID matches 1.. run function pudge:game/ability/grab/launch/end