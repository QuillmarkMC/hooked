function pudge:game/maps/forest/river/kill_power
function pudge:game/maps/forest/river/power/hell/black
schedule clear pudge:game/music/generate
function pudge:game/music/stop_all

schedule function pudge:game/maps/forest/river/power/hell/start_delayed 17t

#disable shops
execute at @e[type=marker,tag=redShop,limit=1] run setblock ~ ~ ~ air
execute at @e[type=marker,tag=blueShop,limit=1] run setblock ~ ~ ~ air
execute as @e[type=armor_stand,tag=shopName] run data merge entity @s {CustomName:"{\"text\":\"Shop is temporarily unavailable!\",\"color\":\"red\"}"}

#revive dead players for start of hell
execute as @a[tag=dead] run function pudge:general/death/revive

scoreboard players set $HellActive river 1
scoreboard players set $HellTimer river 0
scoreboard players operation @a health = @s maxHealth