scoreboard players reset @s suicideTimer
execute at @s run summon marker ~ ~ ~ {Tags:["gameMarker","suicideExplosionMarker"]}
tag @s add tempAttackerTag
execute at @s as @a[tag=isGamer,tag=!tempAttackerTag,gamemode=adventure,distance=..6] run function pudge:game/maps/forest/river/power/suicide/kill_me
tag @s remove tempAttackerTag

scoreboard players set #TempExplosion suicideTimer 0
function pudge:game/maps/forest/river/power/suicide/explosion

function pudge:general/death/on_death