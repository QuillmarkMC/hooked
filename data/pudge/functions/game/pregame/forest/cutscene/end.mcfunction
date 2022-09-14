#kill cutscene markers and armor stands
kill @e[tag=introCutscene]

#teleport players and place barriers around them
gamemode adventure @a[team=!spectator]
tag @a[team=!spectator] add isGamer
gamemode spectator @a[team=spectator]
effect clear @a
execute as @a[team=red] at @e[type=marker,tag=gameRedSpawn,limit=1,sort=random] run tp @s ~ ~2 ~
execute as @a[team=blue] at @e[type=marker,tag=gameBlueSpawn,limit=1,sort=random] run tp @s ~ ~2 ~
execute at @a[tag=isGamer] run place template pudge:player_cage ~-1 ~-1 ~-1
tp @a[gamemode=spectator] @e[type=marker,tag=gameSpectatorSpawn,limit=1]
execute at @e[type=marker,tag=gameRedSpawn,limit=1] run spawnpoint @a[team=red] ~ ~ ~
execute at @e[type=marker,tag=gameBlueSpawn,limit=1] run spawnpoint @a[team=blue] ~ ~ ~

#start countdown for game start
scoreboard players set $StartCountdown countdown 6
function pudge:game/pregame/countdown