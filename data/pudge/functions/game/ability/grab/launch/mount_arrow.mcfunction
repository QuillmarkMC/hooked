#called from pudge:game/ability/grab/launch/mount_arrow OR pudge:game/ability/grab/launch/start
# @s = player who is launched
# @e[tag=tempGrabTag] = arrow they should be riding

scoreboard players operation $Temp_Player launchID = @s entityid
execute as @e[type=arrow,tag=hookArrow] if score @s launchID = $Temp_Player launchID run tag @s add tempLaunchArrowTag

ride @s mount @e[type=arrow,tag=tempLaunchArrowTag,limit=1]

tag @e[type=arrow,tag=tempLaunchArrowTag,limit=1] remove tempLaunchArrowTag