#summon powerup start and end locations, positioned and rotated based on rng pick_side function
#rng
scoreboard players set $max rng 25
function pudge:general/rng/rand

#summon powerup based on rng output
#hell
execute if score $out rng matches 0 positioned ~ ~ ~ rotated ~ ~ run summon armor_stand ~ ~ ~ {Marker:true,Invisible:true,Passengers:[{id:"item",Item:{id:"blaze_powder",Count:1b},Glowing:true,Age:-32768s,PickupDelay:32767,Tags:["riverPower"],Invulnerable:true},{id:"slime",Size:0,active_effects:[{id:"minecraft:invisibility",duration:-1,amplifier:0b,show_particles:false},{id:"minecraft:resistance",duration:-1,amplifier:10b,show_particles:false}],Silent:1b,Tags:["riverPower","hellPower","tempSlimeFixTag"],NoAI:1b,Attributes:[{Base:2.0d,Name:"minecraft:generic.scale"}],Passengers:[{id:"armor_stand",CustomNameVisible:1b,CustomName:'{"translate":"text.game.river.deathmatch.name","color": "dark_red","bold": true}',Invisible:true,Tags:["riverPower"],Marker:true}]}],Tags:["riverAEC","riverPower"]}
execute if score $out rng matches 0 positioned ~ ~ ~ rotated ~ ~ positioned ^ ^ ^102 run summon marker ~ ~ ~ {Tags:["gameMarker","riverEndMarker","riverPower"]}
execute if score $out rng matches 0 run team join red @e[type=item,tag=riverPower,limit=1]
execute if score $Debug var matches 1.. if score $out rng matches 0 run say Hell powerup spawned!

#gold
execute if score $out rng matches 1..4 positioned ~ ~ ~ rotated ~ ~ run summon armor_stand ~ ~ ~ {Marker:true,Invisible:true,Passengers:[{id:"item",Item:{id:"gold_ingot",Count:1b},Glowing:true,Age:-32768s,PickupDelay:32767,Tags:["riverPower"],Invulnerable:true},{id:"slime",Size:0,active_effects:[{id:"minecraft:invisibility",duration:-1,amplifier:0b,show_particles:false},{id:"minecraft:resistance",duration:-1,amplifier:10b,show_particles:false}],Silent:1b,Tags:["riverPower","goldPower","tempSlimeFixTag"],NoAI:1b,Attributes:[{Base:2.0d,Name:"minecraft:generic.scale"}],Passengers:[{id:"armor_stand",CustomNameVisible:1b,CustomName:'{"translate":"text.game.river.gold.name","color": "gold","bold": true}',Invisible:true,Tags:["riverPower"],Marker:true}]}],Tags:["riverAEC","riverPower"]}
execute if score $out rng matches 1..4 positioned ~ ~ ~ rotated ~ ~ positioned ^ ^ ^102 run summon marker ~ ~ ~ {Tags:["gameMarker","riverEndMarker","riverPower"]}
execute if score $out rng matches 1..4 run team join gold @e[type=item,tag=riverPower,limit=1]
execute if score $Debug var matches 1.. if score $out rng matches 1..4 run say Gold powerup spawned!

#insta hook
execute if score $out rng matches 5..8 positioned ~ ~ ~ rotated ~ ~ run summon armor_stand ~ ~ ~ {Marker:true,Invisible:true,Passengers:[{id:"item",Item:{id:"crossbow",Count:1b},Glowing:true,Age:-32768s,PickupDelay:32767,Tags:["riverPower"],Invulnerable:true},{id:"slime",Size:0,active_effects:[{id:"minecraft:invisibility",duration:-1,amplifier:0b,show_particles:false},{id:"minecraft:resistance",duration:-1,amplifier:10b,show_particles:false}],Silent:1b,Tags:["riverPower","hookPower","tempSlimeFixTag"],NoAI:1b,Attributes:[{Base:2.0d,Name:"minecraft:generic.scale"}],Passengers:[{id:"armor_stand",CustomNameVisible:1b,CustomName:'{"translate":"text.game.river.hook.name","color": "white","bold": true}',Invisible:true,Tags:["riverPower"],Marker:true}]}],Tags:["riverAEC","riverPower"]}
execute if score $out rng matches 5..8 positioned ~ ~ ~ rotated ~ ~ positioned ^ ^ ^102 run summon marker ~ ~ ~ {Tags:["gameMarker","riverEndMarker","riverPower"]}
execute if score $Debug var matches 1.. if score $out rng matches 5..8 run say Hook powerup spawned!

#elytra
execute if score $out rng matches 9..12 positioned ~ ~ ~ rotated ~ ~ run summon armor_stand ~ ~ ~ {Marker:true,Invisible:true,Passengers:[{id:"item",Item:{id:"elytra",Count:1b},Glowing:true,Age:-32768s,PickupDelay:32767,Tags:["riverPower"],Invulnerable:true},{id:"slime",Size:0,active_effects:[{id:"minecraft:invisibility",duration:-1,amplifier:0b,show_particles:false},{id:"minecraft:resistance",duration:-1,amplifier:10b,show_particles:false}],Silent:1b,Tags:["riverPower","elytraPower","tempSlimeFixTag"],NoAI:1b,Attributes:[{Base:2.0d,Name:"minecraft:generic.scale"}],Passengers:[{id:"armor_stand",CustomNameVisible:1b,CustomName:'{"translate":"text.game.river.elytra.name","color": "light_purple","bold": true}',Invisible:true,Tags:["riverPower"],Marker:true}]}],Tags:["riverAEC","riverPower"]}
execute if score $out rng matches 9..12 positioned ~ ~ ~ rotated ~ ~ positioned ^ ^ ^102 run summon marker ~ ~ ~ {Tags:["gameMarker","riverEndMarker","riverPower"]}
execute if score $out rng matches 9..12 run team join light_purple @e[type=item,tag=riverPower,limit=1]
execute if score $Debug var matches 1.. if score $out rng matches 9..12 run say Elytra powerup spawned!

#suicide
execute if score $out rng matches 13..16 positioned ~ ~ ~ rotated ~ ~ run summon armor_stand ~ ~ ~ {Marker:true,Invisible:true,Passengers:[{id:"item",Item:{id:"tnt",Count:1b},Glowing:true,Age:-32768s,PickupDelay:32767,Tags:["riverPower"],Invulnerable:true},{id:"slime",Size:0,active_effects:[{id:"minecraft:invisibility",duration:-1,amplifier:0b,show_particles:false},{id:"minecraft:resistance",duration:-1,amplifier:10b,show_particles:false}],Silent:1b,Tags:["riverPower","suicidePower","tempSlimeFixTag"],NoAI:1b,Attributes:[{Base:2.0d,Name:"minecraft:generic.scale"}],Passengers:[{id:"armor_stand",CustomNameVisible:1b,CustomName:'{"translate":"text.game.river.suicide.name","color": "dark_gray","bold": true}',Invisible:true,Tags:["riverPower"],Marker:true}]}],Tags:["riverAEC","riverPower"]}
execute if score $out rng matches 13..16 positioned ~ ~ ~ rotated ~ ~ positioned ^ ^ ^102 run summon marker ~ ~ ~ {Tags:["gameMarker","riverEndMarker","riverPower"]}
execute if score $out rng matches 13..16 run team join dark_gray @e[type=item,tag=riverPower,limit=1]
execute if score $Debug var matches 1.. if score $out rng matches 13..16 run say Suicide powerup spawned!

#rapid fire
execute if score $out rng matches 17..20 positioned ~ ~ ~ rotated ~ ~ run summon armor_stand ~ ~ ~ {Marker:true,Invisible:true,Passengers:[{id:"item",Item:{id:"arrow",Count:1b},Glowing:true,Age:-32768s,PickupDelay:32767,Tags:["riverPower"],Invulnerable:true},{id:"slime",Size:0,active_effects:[{id:"minecraft:invisibility",duration:-1,amplifier:0b,show_particles:false},{id:"minecraft:resistance",duration:-1,amplifier:10b,show_particles:false}],Silent:1b,Tags:["riverPower","rapidFirePower","tempSlimeFixTag"],NoAI:1b,Attributes:[{Base:2.0d,Name:"minecraft:generic.scale"}],Passengers:[{id:"armor_stand",CustomNameVisible:1b,CustomName:'{"translate":"text.game.river.rapid_fire.name","color": "blue","bold": true}',Invisible:true,Tags:["riverPower"],Marker:true}]}],Tags:["riverAEC","riverPower"]}
execute if score $out rng matches 17..20 positioned ~ ~ ~ rotated ~ ~ positioned ^ ^ ^102 run summon marker ~ ~ ~ {Tags:["gameMarker","riverEndMarker","riverPower"]}
execute if score $out rng matches 17..20 run team join blue @e[type=item,tag=riverPower,limit=1]
execute if score $Debug var matches 1.. if score $out rng matches 17..20 run say Rapid fire powerup spawned!

#adrenaline
execute if score $out rng matches 21..24 positioned ~ ~ ~ rotated ~ ~ run summon armor_stand ~ ~ ~ {Marker:true,Invisible:true,Passengers:[{id:"item",Item:{id:"bedrock",Count:1b,components:{custom_model_data:200}},Glowing:true,Age:-32768s,PickupDelay:32767,Tags:["riverPower"],Invulnerable:true},{id:"slime",Size:0,active_effects:[{id:"minecraft:invisibility",duration:-1,amplifier:0b,show_particles:false},{id:"minecraft:resistance",duration:-1,amplifier:10b,show_particles:false}],Silent:1b,Tags:["riverPower","adrenalinePower","tempSlimeFixTag"],NoAI:1b,Attributes:[{Base:2.0d,Name:"minecraft:generic.scale"}],Passengers:[{id:"armor_stand",CustomNameVisible:1b,CustomName:'{"translate":"text.game.river.adrenaline.name","color": "yellow","bold": true}',Invisible:true,Tags:["riverPower"],Marker:true}]}],Tags:["riverAEC","riverPower"]}
execute if score $out rng matches 21..24 positioned ~ ~ ~ rotated ~ ~ positioned ^ ^ ^102 run summon marker ~ ~ ~ {Tags:["gameMarker","riverEndMarker","riverPower"]}
execute if score $out rng matches 21..24 run team join yellow @e[type=item,tag=riverPower,limit=1]
execute if score $Debug var matches 1.. if score $out rng matches 21..24 run say Adrenaline powerup spawned!

#give slime an id to fix annoying bug
execute as @e[type=slime,tag=tempSlimeFixTag,limit=1] run function entity_hit_matching:assign_id
execute as @e[type=slime,tag=tempSlimeFixTag,limit=1] run tag @s remove tempSlimeFixTag