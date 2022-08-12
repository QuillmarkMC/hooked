##Scoreboards
scoreboard objectives add var dummy
execute unless score $State var matches 1.. run scoreboard players set $State var 0
scoreboard objectives add health dummy
scoreboard players set $MaxHealth health 20
scoreboard objectives setdisplay belowName health

##Game Scoreboards
#durability
scoreboard objectives add durability dummy
scoreboard players set #-1 durability -1
scoreboard players set $crossbow_max durability 465
scoreboard players set $shears_max durability 238
#cooldowns
scoreboard objectives add abilityVar dummy
scoreboard objectives add cdHook dummy
scoreboard objectives add cdHookCurrent dummy
execute unless score $Global abilityVar matches 1.. run function pudge:game/cooldowns/set_default
#ability
scoreboard objectives add hookID dummy
scoreboard objectives add hookTimer dummy
#item use
scoreboard objectives add crossbow minecraft.used:crossbow
scoreboard objectives add click minecraft.used:warped_fungus_on_a_stick
#used by arrows to determine who shot them
scoreboard objectives add arrowOwner dummy
#shops
scoreboard objectives add shop dummy
scoreboard objectives add shopItem.Beacon dummy
scoreboard objectives add shopItem.Grass dummy
scoreboard objectives add shopItem.Axe dummy
scoreboard objectives add gold dummy {"text": "Gold","color": "gold"}
scoreboard objectives setdisplay list gold

#weird inventory stuff
scoreboard objectives add numUpgrades dummy
scoreboard players set $MaxInventoryUpgrades var 2
scoreboard players set $ItemID shopItem.Beacon 1
scoreboard players set $ItemID shopItem.Grass 2
scoreboard players set $ItemID shopItem.Axe 3
scoreboard objectives add hotbar.1.ID dummy
scoreboard objectives add hotbar.2.ID dummy
scoreboard objectives add hotbar.3.ID dummy

#Game Bossbar
bossbar add score {"text":""}

##Forceload lobby
forceload add -8 23 9 7

##NPC datapack setup


#match ID for handling DCs
scoreboard objectives add matchID dummy
execute unless score $Global matchID matches 1.. run scoreboard players set $Global matchID 0

#detect leavers
scoreboard objectives add leave minecraft.custom:minecraft.leave_game

#init state to lobby
execute if score $State var matches 0 run function pudge:lobby/load

##Teams
team add red
team modify red color red
team modify red friendlyFire true
#team modify red prefix {"text":"\uE002 ","color":"red"}
team add blue
team modify blue color blue
team modify blue friendlyFire true
#team modify blue prefix {"text":"\uE001 ","color":"blue"}
team add spectator
team modify spectator color dark_gray
team modify spectator friendlyFire false
#team modify spectator prefix {"text":"[Spectator] ","color":"dark_gray"}

##Gamerules
difficulty easy
gamerule announceAdvancements false
gamerule commandBlockOutput false
gamerule disableRaids true
gamerule doDaylightCycle false
gamerule doEntityDrops false
gamerule doFireTick false
gamerule doInsomnia false
gamerule doImmediateRespawn false
gamerule doLimitedCrafting true
gamerule doMobLoot false
gamerule doMobSpawning false
gamerule doPatrolSpawning false
gamerule doTileDrops false
gamerule doTraderSpawning false
gamerule doWeatherCycle false
gamerule drowningDamage true
gamerule fallDamage false
gamerule fireDamage true
gamerule freezeDamage true
gamerule keepInventory true
gamerule mobGriefing false
gamerule naturalRegeneration true
gamerule playersSleepingPercentage 101
# ?
gamerule reducedDebugInfo false
gamerule showDeathMessages true
gamerule spectatorsGenerateChunks true
#gamerule sendCommandFeedback false