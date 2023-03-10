#debug message
execute if score $Debug var matches 1.. run say pudge:game/ability/grab/launch/end

scoreboard players operation $Temp_Player launchID = @s entityid
execute as @e[type=arrow,tag=hookArrow] if score @s launchID = $Temp_Player launchID run tag @s add tempLaunchArrowTag

#clean up scoreboards
scoreboard players reset @s launchID
scoreboard players reset @e[type=arrow,tag=tempLaunchArrowTag,limit=1] launchID
#clean up tags
tag @s remove PreventGrapple
tag @s remove AllowDismount
tag @e[type=arrow,tag=tempLaunchArrowTag,limit=1] remove tempLaunchArrowTag