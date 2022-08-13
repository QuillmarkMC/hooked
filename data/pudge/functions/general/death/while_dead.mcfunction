#called every tick by a player that is dead and waiting to respawn
scoreboard players remove @s deathTimer 1

#teleport dead player to their unique armor stand death cam
scoreboard players operation #Temp death = @s entityid
execute as @e[type=armor_stand,tag=deathSpectate] if score @s armorStand.ID = #Temp death run tag @s add tempArmorStandTPTag
execute as @e[type=armor_stand,tag=tempArmorStandTPTag,limit=1] at @s run tp @s ~ ~0.1 ~ ~ ~
spectate @e[type=armor_stand,tag=tempArmorStandTPTag,limit=1]
tag @e[type=armor_stand,tag=tempArmorStandTPTag,limit=1] remove tempArmorStandTPTag

execute if score @s deathTimer matches ..0 run function pudge:general/death/revive