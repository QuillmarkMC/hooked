#change state
function pudge:general/change_state
#set state
scoreboard players set $State var 2
#marker for spawn location
summon marker 5 -60 30 {Tags:["gameRedSpawn","gameMarker"],Rotation:[-135.0f,0.0f]}
summon marker 12 -60 23 {Tags:["gameBlueSpawn","gameMarker"],Rotation:[45.0f,0.0f]}
summon marker 5 -60 23 {Tags:["gameSpectatorSpawn","gameMarker"],Rotation:[-45.0f,0.0f]}
#players
tag @a[team=red] add isGamer
tag @a[team=blue] add isGamer
gamemode spectator @a[team=spectator]
effect clear @a
tp @a[team=red] @e[type=marker,tag=gameRedSpawn,limit=1]
tp @a[team=blue] @e[type=marker,tag=gameBlueSpawn,limit=1]
tp @a[gamemode=spectator] @e[type=marker,tag=gameSpectatorSpawn,limit=1]
execute at @e[type=marker,tag=gameRedSpawn,limit=1] run spawnpoint @a[team=red] ~ ~ ~
execute at @e[type=marker,tag=gameBlueSpawn,limit=1] run spawnpoint @a[team=blue] ~ ~ ~
execute at @e[type=marker,tag=gameSpectatorSpawn,limit=1] run spawnpoint @a[team=spectator] ~ ~ ~
tag @a[tag=isGamer] add hasHook
execute as @a[tag=isGamer] run function pudge:game/cooldowns/init
#assign match IDs to handle reconnecting players
scoreboard players add $Global matchID 1
scoreboard players operation @a matchID = $Global matchID
#random
scoreboard players operation $CooldownDisplayUpdate var = $DisplayUpdateInterval abilityVar
#shops
function pudge:game/shop/init
#schedule functions
#function pudge:game/inventory/queue_update