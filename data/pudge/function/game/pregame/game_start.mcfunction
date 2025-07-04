#set state
scoreboard players set $StartGame var 2

#init map
function pudge:game/bossbar/init
scoreboard players operation $Income gold = $IncomeCycle var
scoreboard objectives setdisplay list playerKills
function pudge:game/killstreak/combo/init_times

#players
tag @a[tag=isGamer] add hasHook
tag @a[tag=isGamer] add hasMelee
execute as @a[tag=isGamer] run function pudge:game/cooldowns/init
execute as @a[tag=isGamer] run function pudge:game/ability/init
execute as @a[tag=isGamer] run function pudge:game/consume/init
execute as @a[tag=isGamer] run function pudge:general/death/init_armorstand
execute as @a[tag=isGamer] run advancement grant @s only pudge:inv_change
execute at @a[tag=isGamer] run fill ~1 ~4 ~1 ~-1 ~-2 ~-1 air replace barrier
execute as @a[tag=isGamer] run function pudge:game/effects/standard
#assign match IDs to handle reconnecting players
scoreboard players add $Global matchID 1
scoreboard players operation @a matchID = $Global matchID
#random
scoreboard players operation $CooldownDisplayUpdate var = $DisplayUpdateInterval abilityVar
#shops
function pudge:game/shop/init
#music
function pudge:game/music/init
#timers
function pudge:game/scheduled_timers/init
function pudge:game/catchup/init
function pudge:game/scheduled_timers/dc_players
#surrender trigger
function pudge:game/surrender/init