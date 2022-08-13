#teleport receiver death armor stand to current location
scoreboard players operation #Temp death = @s entityid
execute as @e[type=armor_stand,tag=deathSpectate] if score @s armorStand.ID = #Temp death run tag @s add tempArmorStandTPTag
execute if score $LoadMap var matches 1 at @s run tp @e[type=armor_stand,tag=tempArmorStandTPTag,limit=1] ~ ~1 ~ facing entity @e[type=marker,tag=forestHealingFountain,limit=1]
tag @e[type=armor_stand,tag=tempArmorStandTPTag,limit=1] remove tempArmorStandTPTag

execute unless score @s death matches 1.. run kill @s
#handle death
scoreboard players operation @s health = $MaxHealth health
scoreboard players set @s death 0
#reset kill bounty
scoreboard players operation @s bounty = $BaseBounty var
#reset kill streak
function pudge:game/killstreak/reset
#spectator armor stand
gamemode spectator
#tag player
tag @s add dead
scoreboard players operation @s deathTimer = $RespawnDelay var
advancement grant @s only pudge:inv_change
#clear actionbar health display
title @s actionbar ""