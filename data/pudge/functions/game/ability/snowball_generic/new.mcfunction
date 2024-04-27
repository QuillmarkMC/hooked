summon snowball ~ ~ ~ {Tags:["InitSnowball","TempSnowball"],Passengers:[{id:"minecraft:area_effect_cloud",Tags:["AECSnowballRider","SnowballRiderInit"],Age:-2147483648,Duration:-1,WaitTime:-2147483648}]}
data modify entity @e[type=snowball,tag=TempSnowball,limit=1] Owner set from entity @s Owner
data modify entity @e[type=snowball,tag=TempSnowball,limit=1] Motion set from entity @s Motion
data modify entity @e[type=snowball,tag=TempSnowball,limit=1] Item set from entity @s Item

execute if entity @s[nbt={Item:{components:{"minecraft:custom_data":{CreeperSnowball:1b}}}}] run tag @e[type=area_effect_cloud,tag=SnowballRiderInit,limit=1] add CreeperSnowball
scoreboard players operation @e[type=area_effect_cloud,tag=SnowballRiderInit,limit=1] snowballOwner = @s snowballOwner

tag @e[type=snowball,tag=TempSnowball,limit=1] remove TempSnowball
tag @e[type=area_effect_cloud,tag=SnowballRiderInit,limit=1] remove SnowballRiderInit
kill @s