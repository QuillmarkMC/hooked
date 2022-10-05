#called by a dead player when their respawn timer reaches 0
tag @s remove dead
gamemode adventure
execute if score @s killstreak matches 3.. run effect give @s glowing 999999 0 true

tp @s[team=red] @e[type=marker,tag=gameRedSpawn,limit=1,sort=random]
tp @s[team=blue] @e[type=marker,tag=gameBlueSpawn,limit=1,sort=random]

title @s times 0 10 0
title @s subtitle ""
title @s title ""

advancement grant @s only pudge:inv_change