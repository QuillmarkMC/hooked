execute at @e[type=marker,tag=deathArmorStandSpawn,limit=1] run summon armor_stand ~ ~ ~ {Tags:["deathSpectate","tempArmorStandTag"],Marker:true,Invisible:true,Silent:true,Rotation:[0.0f,90.0f]}
scoreboard players operation @e[type=armor_stand,tag=tempArmorStandTag,limit=1] armorStand.ID = @s entityid
tag @e[type=armor_stand,tag=tempArmorStandTag,limit=1] remove tempArmorStandTag