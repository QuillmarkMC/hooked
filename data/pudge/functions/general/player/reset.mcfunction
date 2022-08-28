#end any in progress abilities
execute if score @s hookID matches 1.. run function pudge:game/ability/hook/end
execute if score @s grappleID matches 1.. run function pudge:game/ability/grapple/end

#reset state of player
gamemode adventure
team leave @s
tag @s remove playerReset
function pudge:general/player/remove_game_tags

#inventory slot management
scoreboard players set @s hotbar.1.ID 0
scoreboard players set @s hotbar.2.ID 0
scoreboard players set @s hotbar.3.ID 0
scoreboard players set @s hotbar.4.ID 0
scoreboard players set @s hotbar.5.ID 0
scoreboard players set @s hotbar.6.ID 0
scoreboard players set @s hotbar.7.ID 0

tag @s add initSpawned
tp @s @e[type=marker,tag=lobbySpawn,limit=1]
execute at @e[type=marker,tag=lobbySpawn,limit=1] run spawnpoint @s ~ ~ ~
clear @s
effect clear @s
xp set @s 0 points
xp set @s 0 levels
scoreboard players operation @s maxHealth = $Default maxHealth
scoreboard players operation @s health = @s maxHealth
scoreboard players reset @s playerKills
scoreboard players reset @s totalDeaths
scoreboard players reset @s killstreak
scoreboard players reset @s elytraTimer
scoreboard players reset @s lastDamagedBy
scoreboard players reset @s skip
scoreboard players reset @s deathStreak
advancement revoke @s from pudge:music/root

#state-based reset
execute if score $State var matches 2 run bossbar set score players @a
execute if score $State var matches 2 run team join spectator
execute if score $State var matches 2 run gamemode spectator