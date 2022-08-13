#summon arrow
execute at @s run summon arrow ~ ~ ~ {Tags:["tempArrowTag","arrowInit"]}
execute at @s run data modify entity @e[type=arrow,tag=tempArrowTag,sort=nearest,limit=1] Owner set from entity @s Owner
execute at @s run data modify entity @e[type=arrow,tag=tempArrowTag,sort=nearest,limit=1] Motion set from entity @s Motion

#tag arrow depending on ability
execute if score $Temp crossbow matches 1 run tag @e[type=arrow,tag=tempArrowTag,sort=nearest,limit=1] add hookArrow

#set arrow owner
scoreboard players operation @e[type=arrow,tag=tempArrowTag,sort=nearest,limit=1] arrowOwner = $Temp arrowOwner

tag @e[type=arrow,tag=tempArrowTag,limit=1] remove tempArrowTag
kill @s