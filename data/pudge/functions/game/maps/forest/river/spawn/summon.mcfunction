#summon powerup start and end locations, positioned and rotated based on rng pick_side function
#rng
scoreboard players set $max rng 2
function pudge:general/rng/rand

#summon powerup based on rng output
#hell
execute if score $out rng matches 0 run summon area_effect_cloud ~ ~ ~ {Age:-2147483648,Duration:-1,WaitTime:-2147483648,Passengers:[{id:"item",Item:{id:"blaze_powder",Count:1b},Glowing:1,Age:-32768s,PickupDelay:32767,Tags:["riverPower"]},{id:"slime",Size:1,Passengers:[{id:"armor_stand",CustomNameVisible:1b,CustomName:"{\"text\":\"Hell\",\"color\": \"dark_red\",\"bold\": true}",Invisible:1,Marker:1,Tags:["riverPower"]}],ActiveEffects:[{Id:14,Duration:999999,Amplifier:0,ShowParticles:false},{Id:11,Duration:999999,Amplifier:10,ShowParticles:false}],Silent:1b,Tags:["riverPower","hellPower"]}],Tags:["riverAEC","riverPower"]}
execute if score $out rng matches 0 positioned ^ ^ ^102 run summon marker ~ ~ ~ {Tags:["gameMarker","riverEndMarker"]}
execute if score $out rng matches 0 run team join red @e[type=item,tag=riverPower,limit=1]
execute if score $Debug var matches 1.. if score $out rng matches 0 run say Hell powerup spawned!

#gold
execute if score $out rng matches 1 run summon area_effect_cloud ~ ~ ~ {Age:-2147483648,Duration:-1,WaitTime:-2147483648,Passengers:[{id:"item",Item:{id:"gold_ingot",Count:1b},Glowing:1,Age:-32768s,PickupDelay:32767,Tags:["riverPower"]},{id:"slime",Size:1,Passengers:[{id:"armor_stand",CustomNameVisible:1b,CustomName:"{\"text\":\"Instant Gold\",\"color\": \"gold\",\"bold\": true}",Invisible:1,Marker:1,Tags:["riverPower"]}],ActiveEffects:[{Id:14,Duration:999999,Amplifier:0,ShowParticles:false},{Id:11,Duration:999999,Amplifier:10,ShowParticles:false}],Silent:1b,Tags:["riverPower","goldPower"]}],Tags:["riverAEC","riverPower"]}
execute if score $out rng matches 1 positioned ^ ^ ^102 run summon marker ~ ~ ~ {Tags:["gameMarker","riverEndMarker"]}
execute if score $out rng matches 1 run team join gold @e[type=item,tag=riverPower,limit=1]
execute if score $Debug var matches 1.. if score $out rng matches 1 run say Gold powerup spawned!