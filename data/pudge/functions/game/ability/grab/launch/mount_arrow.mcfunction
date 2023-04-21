#called from pudge:game/ability/grab/launch/tick OR pudge:game/ability/grab/launch/start
# @s = player who is launched
# @e[tag=tempGrabTag] = arrow they should be riding

#debug message
execute if score $Debug var matches 1.. run say pudge:game/ability/grab/launch/mount_arrow

scoreboard players operation $Temp_Player launchID = @s entityid
execute as @e[type=arrow,tag=hookArrow] if score @s launchID = $Temp_Player launchID run tag @s add tempLaunchArrowTag

ride @s mount @e[type=arrow,tag=tempLaunchArrowTag,limit=1]

tag @e[type=arrow,tag=tempLaunchArrowTag,limit=1] remove tempLaunchArrowTag