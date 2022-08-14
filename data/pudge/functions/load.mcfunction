##Scoreboards
scoreboard objectives add var dummy
execute unless score $State var matches 1.. run scoreboard players set $State var 0
scoreboard objectives add health dummy
scoreboard players set $MaxHealth health 20
scoreboard objectives setdisplay belowName health
scoreboard objectives add healthRegen dummy
scoreboard players set $RegenTime healthRegen 200
scoreboard objectives add resist minecraft.custom:minecraft.damage_resisted
scoreboard objectives add math dummy
scoreboard players set #SnowballFix math 1
scoreboard players set #-1 math -1
scoreboard players set #2 math 2
scoreboard players set #3 math 3
scoreboard players set #4 math 4
scoreboard players set #20 math 20
scoreboard objectives add death deathCount
scoreboard objectives add deathTimer dummy
scoreboard players set $RespawnDelay var 100

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
scoreboard objectives add cdCreeper dummy
scoreboard objectives add cdCreeperCurrent dummy
execute unless score $CDDefaultTriggered abilityVar matches 1.. run function pudge:game/cooldowns/set_default
#ability
scoreboard objectives add hookID dummy
scoreboard objectives add hookTimer dummy
scoreboard objectives add hookDamage dummy
scoreboard objectives add meleeDamage dummy
scoreboard objectives add creeperDamage dummy
scoreboard objectives add creeperExplosion dummy
execute unless score $AbilityDefaultTriggered abilityVar matches 1.. run function pudge:game/ability/set_default
#item use
scoreboard objectives add crossbow minecraft.used:crossbow
scoreboard objectives add snowball minecraft.used:minecraft.snowball
scoreboard objectives add click minecraft.used:warped_fungus_on_a_stick
#used by arrows to determine who shot them
scoreboard objectives add arrowOwner dummy
scoreboard objectives add snowballOwner dummy
#shops
scoreboard objectives add shop dummy
scoreboard objectives add enderClick minecraft.custom:minecraft.open_enderchest
scoreboard objectives add shopState dummy
scoreboard objectives add shopItem.Creeper dummy
scoreboard objectives add shopItem.Hook.CD dummy
scoreboard objectives add shopItem.Hook.Damage dummy
scoreboard objectives add shopItem.Melee.Damage dummy
scoreboard objectives add gold dummy {"text": "Gold","color": "gold"}
scoreboard objectives add dropBedrock minecraft.dropped:minecraft.bedrock
scoreboard objectives add dropPotion minecraft.dropped:minecraft.potion
#kill bounty
scoreboard objectives add bounty dummy
scoreboard players set $BaseBounty var 10
#killstreak
scoreboard objectives add killstreak dummy
#armor stand ids
scoreboard objectives add armorStand.ID dummy

#weird inventory stuff
scoreboard objectives add numUpgrades dummy
scoreboard players set $MaxInventoryUpgrades var 3
scoreboard players set $ItemID shopItem.Creeper 1
#skip hotbars 0 and 1 because hook and melee will always occupy those slots
scoreboard objectives add hotbar.2.ID dummy
scoreboard objectives add hotbar.3.ID dummy
scoreboard objectives add hotbar.4.ID dummy
scoreboard objectives add hotbar.5.ID dummy
scoreboard objectives add hotbar.6.ID dummy
scoreboard objectives add hotbar.7.ID dummy

#Game Bossbar
bossbar add score {"text":""}

##Forceload
#lobby
#forceload add -8 23 9 7

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
gamerule doImmediateRespawn true
gamerule doLimitedCrafting true
gamerule doMobLoot false
gamerule doMobSpawning false
gamerule doPatrolSpawning false
gamerule doTileDrops false
gamerule doTraderSpawning false
gamerule doWeatherCycle false
gamerule drowningDamage false
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