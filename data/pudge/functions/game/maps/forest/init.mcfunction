forceload add 22 25 89 23
#marker for spawn location
summon marker 25 61 19 {Tags:["gameRedSpawn","gameMarker"],Rotation:[-90.0f,0.0f]}
summon marker 87 61 19 {Tags:["gameBlueSpawn","gameMarker"],Rotation:[90.0f,0.0f]}
summon marker 56 67 19 {Tags:["gameSpectatorSpawn","gameMarker"],Rotation:[-90.0f,0.0f]}
summon marker 56 37 19 {Tags:["deathArmorStandSpawn","gameMarker"]}

#marker for healing fountain
summon marker 56 60 19 {Tags:["forestHealingFountain","gameMarker"]}
#fountain particle effects
summon marker 56.5 59.0 19.5 {Tags:["forestHealingFountainBase","gameMarker"],Rotation:[0.0f,0.0f]}
summon marker 56.5 64.0 19.5 {Tags:["forestHealingFountainTop","gameMarker"]}
execute at @e[type=marker,tag=forestHealingFountainBase,limit=1] run summon marker ~ ~ ~ {Tags:["forestHealingFountainParticle","gameMarker"],Rotation:[0.0f,0.0f]}
function pudge:game/maps/forest/fountain_particles_up