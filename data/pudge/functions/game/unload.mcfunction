kill @e[type=marker,tag=gameMarker]
kill @e[type=armor_stand,tag=gameMarker]
kill @e[type=armor_stand,tag=deathSpectate]
tag @a add playerReset
bossbar set score players
scoreboard objectives setdisplay list
scoreboard players set $StartGame var 0
scoreboard players set $Winner cutscene 0
execute if score $LoadMap var matches 1 run function pudge:game/maps/forest/uninit
function pudge:game/music/stop_all
schedule clear pudge:game/music/generate
schedule clear pudge:game/scheduled_timers/seconds
schedule clear pudge:game/catchup/seconds
schedule clear pudge:game/surrender/red/conclude
schedule clear pudge:game/surrender/blue/conclude
schedule clear pudge:game/surrender/red/enable
schedule clear pudge:game/surrender/blue/enable
schedule clear pudge:game/scheduled_timers/victory_time
schedule clear pudge:game/scheduled_timers/dc_players