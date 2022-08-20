forceload add 22 25 89 23
forceload add 57 -43 56 73
#marker for spawn location
#red
summon marker 25.5 61.0 -12.5 {Tags:["gameRedSpawn","gameMarker"],Rotation:[-90.0f,0.0f]}
summon marker 25.5 61.0 -4.5 {Tags:["gameRedSpawn","gameMarker"],Rotation:[-90.0f,0.0f]}
summon marker 25.5 61.0 3.5 {Tags:["gameRedSpawn","gameMarker"],Rotation:[-90.0f,0.0f]}
summon marker 25.5 61.0 11.5 {Tags:["gameRedSpawn","gameMarker"],Rotation:[-90.0f,0.0f]}
summon marker 25.5 61.0 19.5 {Tags:["gameRedSpawn","gameMarker"],Rotation:[-90.0f,0.0f]}
summon marker 25.5 61.0 27.5 {Tags:["gameRedSpawn","gameMarker"],Rotation:[-90.0f,0.0f]}
summon marker 25.5 61.0 35.5 {Tags:["gameRedSpawn","gameMarker"],Rotation:[-90.0f,0.0f]}
summon marker 25.5 61.0 43.5 {Tags:["gameRedSpawn","gameMarker"],Rotation:[-90.0f,0.0f]}
summon marker 25.5 61.0 51.5 {Tags:["gameRedSpawn","gameMarker"],Rotation:[-90.0f,0.0f]}
#blue
summon marker 87.5 61.0 -12.5 {Tags:["gameBlueSpawn","gameMarker"],Rotation:[90.0f,0.0f]}
summon marker 87.5 61.0 -4.5 {Tags:["gameBlueSpawn","gameMarker"],Rotation:[90.0f,0.0f]}
summon marker 87.5 61.0 3.5 {Tags:["gameBlueSpawn","gameMarker"],Rotation:[90.0f,0.0f]}
summon marker 87.5 61.0 11.5 {Tags:["gameBlueSpawn","gameMarker"],Rotation:[90.0f,0.0f]}
summon marker 87.5 61.0 19.5 {Tags:["gameBlueSpawn","gameMarker"],Rotation:[90.0f,0.0f]}
summon marker 87.5 61.0 27.5 {Tags:["gameBlueSpawn","gameMarker"],Rotation:[90.0f,0.0f]}
summon marker 87.5 61.0 35.5 {Tags:["gameBlueSpawn","gameMarker"],Rotation:[90.0f,0.0f]}
summon marker 87.5 61.0 43.5 {Tags:["gameBlueSpawn","gameMarker"],Rotation:[90.0f,0.0f]}
summon marker 87.5 61.0 51.5 {Tags:["gameBlueSpawn","gameMarker"],Rotation:[90.0f,0.0f]}

summon marker 56 67 19 {Tags:["gameSpectatorSpawn","gameMarker"],Rotation:[-90.0f,0.0f]}
summon marker 56 37 19 {Tags:["deathArmorStandSpawn","gameMarker"]}

#marker for healing fountain
summon marker 56 60 19 {Tags:["forestHealingFountain","gameMarker"]}
#fountain particle effects
summon marker 56.5 59.0 19.5 {Tags:["forestHealingFountainBase","gameMarker"],Rotation:[0.0f,0.0f]}
summon marker 56.5 64.0 19.5 {Tags:["forestHealingFountainTop","gameMarker"]}
execute at @e[type=marker,tag=forestHealingFountainBase,limit=1] run summon marker ~ ~ ~ {Tags:["forestHealingFountainParticle","gameMarker"],Rotation:[0.0f,0.0f]}
execute at @e[type=marker,tag=forestHealingFountainBase,limit=1] run summon marker ~ ~ ~ {Tags:["forestHealingFountainParticle","gameMarker"],Rotation:[120.0f,0.0f]}
execute at @e[type=marker,tag=forestHealingFountainBase,limit=1] run summon marker ~ ~ ~ {Tags:["forestHealingFountainParticle","gameMarker"],Rotation:[240.0f,0.0f]}
function pudge:game/maps/forest/fountain_particles_up

#river power ups
scoreboard players set $RiverPowerSpawnDelay river 1200
scoreboard players operation $RiverPowerSpawn river = $RiverPowerSpawnDelay river
scoreboard players set $HellActive river 0