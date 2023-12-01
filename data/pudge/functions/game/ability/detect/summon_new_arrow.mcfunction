#debug message
execute if score $Debug var matches 1.. run say pudge:game/ability/detect/summon_new_arrow
#summon arrow
execute at @s run summon arrow ~ ~ ~ {Tags:["tempArrowTag","arrowInit"]}
execute at @s run data modify entity @e[type=arrow,tag=tempArrowTag,sort=nearest,limit=1] Owner set from entity @s Owner
execute at @s run data modify entity @e[type=arrow,tag=tempArrowTag,sort=nearest,limit=1] Motion set from entity @s Motion
execute at @s run data modify entity @e[type=arrow,tag=tempArrowTag,sort=nearest,limit=1] crit set value 1b

#tag arrow depending on ability
execute if score $Temp crossbow matches 1 run tag @e[type=arrow,tag=tempArrowTag,sort=nearest,limit=1] add hookArrow
execute if score $Temp crossbow matches 2 run tag @e[type=arrow,tag=tempArrowTag,sort=nearest,limit=1] add grappleArrow
execute if score $Temp crossbow matches 2 as @e[type=arrow,tag=tempArrowTag,sort=nearest,limit=1] run function entity_hit_matching:assign_id

#check for bounce ability on arrow owner, dont bounce grappling hooks
execute if score @a[tag=tempArrowOwnerTag,limit=1] bounceCount matches 1.. run scoreboard players operation @e[type=arrow,tag=tempArrowTag,sort=nearest,limit=1,tag=!grappleArrow] bounceCount = @a[tag=tempArrowOwnerTag,limit=1] bounceCount

#check if player was holding another player, initiate launch
execute if score #HoldingPlayer cdGrab matches 1.. run function pudge:game/ability/grab/launch/start

#set arrow owner
scoreboard players operation @e[type=arrow,tag=tempArrowTag,sort=nearest,limit=1] arrowOwner = $Temp arrowOwner

tag @e[type=arrow,tag=tempArrowTag,limit=1] remove tempArrowTag
kill @s