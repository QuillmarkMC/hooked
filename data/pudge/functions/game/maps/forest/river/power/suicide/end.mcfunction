scoreboard players reset @s suicideTimer

tag @s add tempAttackerTag
execute at @s as @a[tag=isGamer,tag=!tempAttackerTag,gamemode=adventure,distance=..6] run function pudge:game/maps/forest/river/power/suicide/kill_me
tag @s remove tempAttackerTag

execute at @s run particle explosion_emitter ~ ~ ~ 0 0 0 0 1 force
execute at @s run playsound entity.generic.explode ambient @a ~ ~ ~ 1 1.2

function pudge:general/death/on_death