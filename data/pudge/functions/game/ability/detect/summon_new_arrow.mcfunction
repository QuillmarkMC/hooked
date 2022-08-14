#summon arrow
execute at @s run summon arrow ~ ~ ~ {Tags:["tempArrowTag","arrowInit"]}
execute at @s run data modify entity @e[type=arrow,tag=tempArrowTag,sort=nearest,limit=1] Owner set from entity @s Owner
execute at @s run data modify entity @e[type=arrow,tag=tempArrowTag,sort=nearest,limit=1] Motion set from entity @s Motion
execute at @s run data modify entity @e[type=arrow,tag=tempArrowTag,sort=nearest,limit=1] crit set value 1b

#tag arrow depending on ability
execute if score $Temp crossbow matches 1 run tag @e[type=arrow,tag=tempArrowTag,sort=nearest,limit=1] add hookArrow

#check for bounce ability on arrow owner
execute if score @a[tag=tempArrowOwnerTag,limit=1] bounceCount matches 1.. run scoreboard players operation @e[type=arrow,tag=tempArrowTag,sort=nearest,limit=1] bounceCount = @a[tag=tempArrowOwnerTag,limit=1] bounceCount

#set arrow owner
scoreboard players operation @e[type=arrow,tag=tempArrowTag,sort=nearest,limit=1] arrowOwner = $Temp arrowOwner

tag @e[type=arrow,tag=tempArrowTag,limit=1] remove tempArrowTag
kill @s