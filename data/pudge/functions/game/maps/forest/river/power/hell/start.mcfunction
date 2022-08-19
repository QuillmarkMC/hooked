function pudge:game/maps/forest/river/kill_power
function pudge:game/maps/forest/river/power/hell/black

schedule function pudge:game/maps/forest/river/power/hell/start_delayed 17t

scoreboard players set $HellActive river 1
scoreboard players set $HellTimer river 0
scoreboard players operation @a health = $MaxHealth health