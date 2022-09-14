kill @e[type=marker,tag=gameMarker]
kill @e[type=armor_stand,tag=gameMarker]
kill @e[type=armor_stand,tag=deathSpectate]
tag @a add playerReset
bossbar set score players
scoreboard objectives setdisplay list
scoreboard players set $StartGame var 0
execute if score $LoadMap var matches 1 run function pudge:game/maps/forest/uninit
function pudge:game/music/stop_all
schedule clear pudge:game/music/generate