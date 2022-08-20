scoreboard players add #TempExplosion suicideTimer 1
execute at @e[type=marker,tag=suicideExplosionMarker,limit=1] run particle explosion_emitter ~ ~ ~ 0 0 0 0 1 force
execute at @e[type=marker,tag=suicideExplosionMarker,limit=1] run playsound entity.generic.explode ambient @a ~ ~ ~ 1 0.7
execute unless score #TempExplosion suicideTimer matches 5.. run schedule function pudge:game/maps/forest/river/power/suicide/explosion 1t