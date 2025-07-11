#called from game/ability/detect/summon_new_arrow
# @a[tag=tempArrowOwnerTag,limit=1] = player who shot arrow
# @a[tag=tempLaunchTag,limit=1] = grabbed player to be launched
# @e[type=arrow,tag=tempArrowTag,limit=1] = arrow to be mounted

#debug message
execute if score $Debug var matches 1.. run say pudge:game/ability/grab/launch/start

scoreboard players operation $Temp_Player grabID = @a[tag=tempArrowOwnerTag,limit=1] entityid
execute as @a[tag=isGamer] if score @s grabID = $Temp_Player grabID run tag @s add tempLaunchTag

#tag arrow to be ridden
scoreboard players operation @s launchID = @a[tag=tempLaunchTag,limit=1] entityid
#make player ride arrow
execute as @a[tag=tempLaunchTag,limit=1] run function pudge:game/ability/grab/launch/mount_arrow
#kill armor stand they were previously riding, unlink players
execute as @a[tag=tempLaunchTag,limit=1] run function pudge:game/ability/grab/end
#allow dismounting if ally, force continuous riding if enemy
execute if score @a[tag=tempArrowOwnerTag,limit=1] teamID = @a[tag=tempLaunchTag,limit=1] teamID run tag @a[tag=tempLaunchTag,limit=1] add AllowDismount

#not an ID, but just a way to track if the player is being launched
scoreboard players set @a[tag=tempLaunchTag,limit=1] launchID 1

tag @a[tag=tempLaunchTag,limit=1] add PreventGrapple
scoreboard players set @a[tag=tempLaunchTag,limit=1] launchTimer 0
advancement grant @a[tag=tempLaunchTag,limit=1] only pudge:inv_change
tag @a[tag=tempLaunchTag,limit=1] remove tempLaunchTag