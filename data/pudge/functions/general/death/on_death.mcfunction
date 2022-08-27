#teleport receiver death armor stand to current location
scoreboard players operation #Temp death = @s entityid
execute as @e[type=armor_stand,tag=deathSpectate] if score @s armorStand.ID = #Temp death run tag @s add tempArmorStandTPTag
execute if score $LoadMap var matches 1 at @s run tp @e[type=armor_stand,tag=tempArmorStandTPTag,limit=1] ~ ~1 ~ facing entity @e[type=marker,tag=forestHealingFountain,limit=1]
tag @e[type=armor_stand,tag=tempArmorStandTPTag,limit=1] remove tempArmorStandTPTag

execute unless score @s death matches 1.. run kill @s
#handle death
scoreboard players operation @s health = @s maxHealth
scoreboard players set @s death 0
scoreboard players add @s totalDeaths 1
#check teams
tag @s add teamCheckPlayer1
tag @a[tag=tempAttackerTag,limit=1] add teamCheckPlayer2
function pudge:general/teams/check_teams

#display death message to receiver
execute if score #TempTeams var matches 0 run tellraw @s [{"text": "(-) ","color": "red"},{"text": "You were killed by ","color": "white"},{"text":"","extra":[{"selector":"@a[tag=tempAttackerTag,limit=1]"}]},{"text": " and gave ","color": "white"},{"score":{"name":"@s","objective":"bounty"},"color": "gold"},{"text": " gold.","color": "gold"}]
execute if score #TempTeams var matches 1 run tellraw @s [{"text": "(-) ","color": "red"},{"text": "You died!","color": "white"}]
execute if score #TempTeams var matches 2 unless entity @s[tag=tempAttackerTag] run tellraw @s [{"text": "(-) ","color": "red"},{"text": "You were killed by ","color": "white"},{"text":"","extra":[{"selector":"@a[tag=tempAttackerTag,limit=1]"}]}]

#if player killed themselves, give kill credit to last attacker
execute if entity @s[tag=tempAttackerTag,scores={lastDamagedBy=-2147483648..2147483647}] run function pudge:general/death/handle_self_kill

#reset kill bounty
scoreboard players operation @s bounty = $BaseBounty var
#reset kill streak
function pudge:game/killstreak/reset
#ability effects
execute if score @s hookID matches 0.. run function pudge:game/ability/hook/end
scoreboard players reset @s suicideTimer
#spectator armor stand
gamemode spectator
#tag player
tag @s add dead
scoreboard players operation @s deathTimer = $RespawnDelay var
advancement grant @s only pudge:inv_change
#clear actionbar health display
title @s actionbar ""
