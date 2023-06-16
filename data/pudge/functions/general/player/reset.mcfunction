#end any in progress abilities
execute if score @s hookID matches 1.. run function pudge:game/ability/hook/end
execute if score @s grappleID matches 1.. run function pudge:game/ability/grapple/end
execute if score @s grabID matches 1.. run function pudge:game/ability/grab/end
execute if score @s launchID matches 1.. run function pudge:game/ability/grab/launch/end

#reset state of player
gamemode adventure
team leave @s
tag @s remove playerReset
tag @s remove admin
function pudge:general/player/remove_game_tags
function pudge:general/player/remove_lobby_tags

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
scoreboard players reset @s lobbysigns
scoreboard players reset @s value
scoreboard players reset @s customValueTimer
scoreboard players operation @s maxHealth = $Default maxHealth
scoreboard players operation @s health = @s maxHealth
scoreboard players set @s playerKills 0
scoreboard players set @s totalDeaths 0
scoreboard players reset @s killstreak
scoreboard players set @s totalAssists 0
scoreboard players reset @s suicideTimer
scoreboard players reset @s elytraTimer
scoreboard players reset @s adrenalineTimer
scoreboard players reset @s rapidFireChargeTimer
scoreboard players reset @s rapidFireTimer
scoreboard players reset @s lastDamagedBy
scoreboard players reset @s skip
scoreboard players reset @s deathStreak
scoreboard players reset @s stupidTotemFix
scoreboard players reset @s clearTotemEffects
scoreboard players reset @s surrender
scoreboard players reset @s grabDropDelay
scoreboard players operation @s announcer = $Redmage announcer
advancement revoke @s from pudge:music/root

#state-based reset
execute if score $State var matches 0..1 run function pudge:lobby/effects/standard
execute if score $State var matches 2 run bossbar set score players @a
execute if score $State var matches 2 run team join spectator
execute if score $State var matches 2 run gamemode spectator