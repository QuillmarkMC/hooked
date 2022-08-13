#called by a dead player when their respawn timer reaches 0
tag @s remove dead
gamemode adventure

tp @s[team=red] @e[type=marker,tag=gameRedSpawn,limit=1]
tp @s[team=blue] @e[type=marker,tag=gameBlueSpawn,limit=1]

title @s times 0 10 0
title @s subtitle ""
title @s title ""

advancement grant @s only pudge:inv_change