#change state
function pudge:general/change_state
#set state
scoreboard players set $State var 2

#init map
execute if score $LoadMap var matches 1 run function pudge:game/maps/forest/init
function pudge:game/bossbar/init
scoreboard players operation $Income gold = $IncomeCycle var
scoreboard objectives setdisplay list playerKills
function pudge:game/killstreak/combo/init_times

#players
tag @a[team=!spectator] add isGamer
gamemode spectator @a[team=spectator]
effect clear @a
tp @a[team=red] @e[type=marker,tag=gameRedSpawn,limit=1]
tp @a[team=blue] @e[type=marker,tag=gameBlueSpawn,limit=1]
tp @a[gamemode=spectator] @e[type=marker,tag=gameSpectatorSpawn,limit=1]
execute at @e[type=marker,tag=gameRedSpawn,limit=1] run spawnpoint @a[team=red] ~ ~ ~
execute at @e[type=marker,tag=gameBlueSpawn,limit=1] run spawnpoint @a[team=blue] ~ ~ ~
tag @a[tag=isGamer] add hasHook
tag @a[tag=isGamer] add hasMelee
execute as @a[tag=isGamer] run function pudge:game/cooldowns/init
execute as @a[tag=isGamer] run function pudge:game/ability/init
execute as @a[tag=isGamer] run function pudge:general/death/init_armorstand
execute as @a[tag=isGamer] run advancement grant @s only pudge:inv_change
#assign match IDs to handle reconnecting players
scoreboard players add $Global matchID 1
scoreboard players operation @a matchID = $Global matchID
#random
scoreboard players operation $CooldownDisplayUpdate var = $DisplayUpdateInterval abilityVar
#shops
function pudge:game/shop/init
#schedule functions
#function pudge:game/inventory/queue_update