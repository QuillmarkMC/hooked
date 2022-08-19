schedule clear pudge:game/maps/forest/river/power/hell/red
schedule clear pudge:game/maps/forest/river/power/hell/music_loop

tellraw @a [{"text": "[!] ","color": "yellow","bold": true},{"text":"","extra":[{"selector":"@a[gamemode=adventure,tag=isGamer,limit=1]"}],"bold": false},{"text": " survived the Deathmatch and was awarded ","color": "white","bold": false},{"text": "200 gold!","color": "gold"}]
scoreboard players add @a[gamemode=adventure,tag=isGamer,limit=1] gold 200
execute as @a[gamemode=adventure,tag=isGamer,limit=1] run function pudge:game/gold/update_display

scoreboard players set $HellActive river 0

execute as @a[tag=deadHell] run function pudge:general/death/revive
tag @a remove deadHell

function pudge:game/maps/forest/river/power/hell/black
#schedule new song