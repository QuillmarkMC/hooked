kill @e[type=marker,tag=gameMarker]
kill @e[type=armor_stand,tag=gameMarker]
kill @e[type=armor_stand,tag=deathSpectate]
tag @a add playerReset
bossbar set score players
scoreboard objectives setdisplay list
#schedule clear pudge:game/inventory/queue_update
execute if score $LoadMap var matches 1 run function pudge:game/maps/forest/uninit