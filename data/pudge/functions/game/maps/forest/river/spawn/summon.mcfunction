#summon powerup start and end locations, positioned and rotated based on rng pick_side function
#rng
scoreboard players set $max rng 21
function pudge:general/rng/rand

#summon powerup based on rng output
#hell
execute if score $out rng matches 0 positioned ~ ~ ~ rotated ~ ~ run summon armor_stand ~ ~ ~ {Marker:1,Invisible:1,Passengers:[{id:"item",Item:{id:"blaze_powder",Count:1b},Glowing:1,Age:-32768s,PickupDelay:32767,Tags:["riverPower"],Invulnerable:true},{id:"slime",Size:1,ActiveEffects:[{Id:14,Duration:999999,Amplifier:0,ShowParticles:false},{Id:11,Duration:999999,Amplifier:10,ShowParticles:false}],Silent:1b,Tags:["riverPower","hellPower"],NoAI:1b},{id:"armor_stand",CustomNameVisible:1b,CustomName:"{\"text\":\"Deathmatch\",\"color\": \"dark_red\",\"bold\": true}",Invisible:1,Tags:["riverPower"],Small:true,DisabledSlots:4128768}],Tags:["riverAEC","riverPower"]}
execute if score $out rng matches 0 positioned ~ ~ ~ rotated ~ ~ positioned ^ ^ ^102 run summon marker ~ ~ ~ {Tags:["gameMarker","riverEndMarker","riverPower"]}
execute if score $out rng matches 0 run team join red @e[type=item,tag=riverPower,limit=1]
execute if score $Debug var matches 1.. if score $out rng matches 0 run say Hell powerup spawned!

#gold
execute if score $out rng matches 1..4 positioned ~ ~ ~ rotated ~ ~ run summon armor_stand ~ ~ ~ {Marker:1,Invisible:1,Passengers:[{id:"item",Item:{id:"gold_ingot",Count:1b},Glowing:1,Age:-32768s,PickupDelay:32767,Tags:["riverPower"],Invulnerable:true},{id:"slime",Size:1,ActiveEffects:[{Id:14,Duration:999999,Amplifier:0,ShowParticles:false},{Id:11,Duration:999999,Amplifier:10,ShowParticles:false}],Silent:1b,Tags:["riverPower","goldPower"],NoAI:1b},{id:"armor_stand",CustomNameVisible:1b,CustomName:"{\"text\":\"Instant Gold\",\"color\": \"gold\",\"bold\": true}",Invisible:1,Tags:["riverPower"],Small:true,Invulnerable:true,NoGravity:true,DisabledSlots:4128768}],Tags:["riverAEC","riverPower"]}
execute if score $out rng matches 1..4 positioned ~ ~ ~ rotated ~ ~ positioned ^ ^ ^102 run summon marker ~ ~ ~ {Tags:["gameMarker","riverEndMarker","riverPower"]}
execute if score $out rng matches 1..4 run team join gold @e[type=item,tag=riverPower,limit=1]
execute if score $Debug var matches 1.. if score $out rng matches 1 run say Gold powerup spawned!

#insta hook
execute if score $out rng matches 5..8 positioned ~ ~ ~ rotated ~ ~ run summon armor_stand ~ ~ ~ {Marker:1,Invisible:1,Passengers:[{id:"item",Item:{id:"crossbow",Count:1b},Glowing:1,Age:-32768s,PickupDelay:32767,Tags:["riverPower"],Invulnerable:true},{id:"slime",Size:1,ActiveEffects:[{Id:14,Duration:999999,Amplifier:0,ShowParticles:false},{Id:11,Duration:999999,Amplifier:10,ShowParticles:false}],Silent:1b,Tags:["riverPower","hookPower"],NoAI:1b},{id:"armor_stand",CustomNameVisible:1b,CustomName:"{\"text\":\"Mass Hook\",\"color\": \"white\",\"bold\": true}",Invisible:1,Tags:["riverPower"],Small:true,Invulnerable:true,NoGravity:true,DisabledSlots:4128768}],Tags:["riverAEC","riverPower"]}
execute if score $out rng matches 5..8 positioned ~ ~ ~ rotated ~ ~ positioned ^ ^ ^102 run summon marker ~ ~ ~ {Tags:["gameMarker","riverEndMarker","riverPower"]}
execute if score $Debug var matches 1.. if score $out rng matches 2 run say Hook powerup spawned!

#elytra
execute if score $out rng matches 9..12 positioned ~ ~ ~ rotated ~ ~ run summon armor_stand ~ ~ ~ {Marker:1,Invisible:1,Passengers:[{id:"item",Item:{id:"elytra",Count:1b},Glowing:1,Age:-32768s,PickupDelay:32767,Tags:["riverPower"],Invulnerable:true},{id:"slime",Size:1,ActiveEffects:[{Id:14,Duration:999999,Amplifier:0,ShowParticles:false},{Id:11,Duration:999999,Amplifier:10,ShowParticles:false}],Silent:1b,Tags:["riverPower","elytraPower"],NoAI:1b},{id:"armor_stand",CustomNameVisible:1b,CustomName:"{\"text\":\"Fly Hacks\",\"color\": \"light_purple\",\"bold\": true}",Invisible:1,Tags:["riverPower"],Small:true,Invulnerable:true,NoGravity:true,DisabledSlots:4128768}],Tags:["riverAEC","riverPower"]}
execute if score $out rng matches 9..12 positioned ~ ~ ~ rotated ~ ~ positioned ^ ^ ^102 run summon marker ~ ~ ~ {Tags:["gameMarker","riverEndMarker","riverPower"]}
execute if score $out rng matches 9..12 run team join light_purple @e[type=item,tag=riverPower,limit=1]
execute if score $Debug var matches 1.. if score $out rng matches 3 run say Elytra powerup spawned!

#suicide
execute if score $out rng matches 13..16 positioned ~ ~ ~ rotated ~ ~ run summon armor_stand ~ ~ ~ {Marker:1,Invisible:1,Passengers:[{id:"item",Item:{id:"tnt",Count:1b},Glowing:1,Age:-32768s,PickupDelay:32767,Tags:["riverPower"],Invulnerable:true},{id:"slime",Size:1,ActiveEffects:[{Id:14,Duration:999999,Amplifier:0,ShowParticles:false},{Id:11,Duration:999999,Amplifier:10,ShowParticles:false}],Silent:1b,Tags:["riverPower","suicidePower"],NoAI:1b},{id:"armor_stand",CustomNameVisible:1b,CustomName:"{\"text\":\"Self Destruct\",\"color\": \"dark_gray\",\"bold\": true}",Invisible:1,Tags:["riverPower"],Small:true,Invulnerable:true,NoGravity:true,DisabledSlots:4128768}],Tags:["riverAEC","riverPower"]}
execute if score $out rng matches 13..16 positioned ~ ~ ~ rotated ~ ~ positioned ^ ^ ^102 run summon marker ~ ~ ~ {Tags:["gameMarker","riverEndMarker","riverPower"]}
execute if score $out rng matches 13..16 run team join dark_gray @e[type=item,tag=riverPower,limit=1]
execute if score $Debug var matches 1.. if score $out rng matches 4 run say Suicide powerup spawned!

#rapid fire
execute if score $out rng matches 17..20 positioned ~ ~ ~ rotated ~ ~ run summon armor_stand ~ ~ ~ {Marker:1,Invisible:1,Passengers:[{id:"item",Item:{id:"arrow",Count:1b},Glowing:1,Age:-32768s,PickupDelay:32767,Tags:["riverPower"],Invulnerable:true},{id:"slime",Size:1,ActiveEffects:[{Id:14,Duration:999999,Amplifier:0,ShowParticles:false},{Id:11,Duration:999999,Amplifier:10,ShowParticles:false}],Silent:1b,Tags:["riverPower","rapidFirePower"],NoAI:1b},{id:"armor_stand",CustomNameVisible:1b,CustomName:"{\"text\":\"Rapid Fire\",\"color\": \"blue\",\"bold\": true}",Invisible:1,Tags:["riverPower"],Small:true,Invulnerable:true,NoGravity:true,DisabledSlots:4128768}],Tags:["riverAEC","riverPower"]}
execute if score $out rng matches 17..20 positioned ~ ~ ~ rotated ~ ~ positioned ^ ^ ^102 run summon marker ~ ~ ~ {Tags:["gameMarker","riverEndMarker","riverPower"]}
execute if score $out rng matches 17..20 run team join blue @e[type=item,tag=riverPower,limit=1]
execute if score $Debug var matches 1.. if score $out rng matches 4 run say Rapid fire powerup spawned!