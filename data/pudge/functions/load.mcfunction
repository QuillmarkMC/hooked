##Scoreboards
scoreboard objectives add var dummy
execute unless score $State var matches 1.. run scoreboard players set $State var 0
scoreboard objectives add health dummy
scoreboard objectives add maxHealth dummy
scoreboard objectives add displayHealth dummy "Health"
scoreboard players set $Default maxHealth 200
scoreboard objectives setdisplay belowName displayHealth
scoreboard objectives add healthRegen dummy
scoreboard players set $RegenTime healthRegen 20
scoreboard objectives add resist minecraft.custom:minecraft.damage_resisted
scoreboard objectives add math dummy
scoreboard players set #SnowballFix math 1
scoreboard players set #-1 math -1
scoreboard players set #2 math 2
scoreboard players set #3 math 3
scoreboard players set #4 math 4
scoreboard players set #5 math 5
scoreboard players set #10 math 10
scoreboard players set #20 math 20
scoreboard players set #40 math 40
scoreboard players set #60 math 60
scoreboard players set #80 math 80
scoreboard players set #100 math 100
scoreboard objectives add death deathCount
scoreboard objectives add deathTimer dummy
scoreboard objectives add deathStreak dummy
scoreboard objectives add totalDeaths dummy
scoreboard objectives add playerKills dummy {"text": "Individual Kills","color": "gold"}
scoreboard objectives add totalAssists dummy
scoreboard players set $RespawnDelay var 100
scoreboard objectives add regenTimer dummy
scoreboard players set $RegenTick regenTimer 20
scoreboard objectives add lobbyvar dummy
scoreboard objectives add countdown dummy
scoreboard objectives add lobbysigns trigger
scoreboard objectives add lobbysigns.default dummy "Default Settings"
scoreboard objectives add value trigger
function pudge:lobby/settings/defaults
scoreboard objectives add lastDamagedBy dummy
scoreboard objectives add cutscene dummy
#timers
scoreboard objectives add timers dummy
scoreboard players set $MaxGameLengthSeconds timers 3600
scoreboard players set $MaxLengthPerKillSeconds timers 600
scoreboard players set $MaxCatchupLengthSeconds timers 240
scoreboard players set $BaseCatchupReward timers 100

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
scoreboard objectives add cdBounce dummy
scoreboard objectives add cdKnockback dummy
scoreboard objectives add cdGrapple dummy
scoreboard objectives add cdGrappleCurrent dummy
scoreboard objectives add cdLifesteal dummy
scoreboard objectives add cdTotem dummy
scoreboard objectives add cdTotemCurrent dummy
#execute unless score $CDDefaultTriggered abilityVar matches 1.. run function pudge:game/cooldowns/set_default
function pudge:game/cooldowns/set_default
#ability
scoreboard objectives add hookID dummy
scoreboard objectives add hookTimer dummy
scoreboard objectives add hookDamage dummy
scoreboard objectives add meleeDamage dummy
scoreboard objectives add creeperDamage dummy
scoreboard objectives add creeperExplosion dummy
scoreboard objectives add bounceCount dummy
scoreboard objectives add knockbackLevel dummy
scoreboard objectives add grappleID dummy
scoreboard objectives add grappleTimer dummy
scoreboard objectives add lifestealAmount dummy
scoreboard objectives add lifestealRegen dummy
scoreboard objectives add totemChance dummy
scoreboard objectives add clearTotemEffects dummy
scoreboard objectives add stupidTotemFix dummy
scoreboard objectives add goatSound dummy
#execute unless score $AbilityDefaultTriggered abilityVar matches 1.. run function pudge:game/ability/set_default
function pudge:game/ability/set_default
#consumables
scoreboard objectives add consumeVar dummy
scoreboard objectives add hasteTimer dummy
scoreboard objectives add rangedAPTimer dummy
scoreboard objectives add rangedAPValue dummy
function pudge:game/consume/set_default
#item use
scoreboard objectives add crossbow minecraft.used:crossbow
scoreboard objectives add snowball minecraft.used:minecraft.snowball
scoreboard objectives add click minecraft.used:warped_fungus_on_a_stick
#used by arrows to determine who shot them
scoreboard objectives add arrowOwner dummy
scoreboard objectives add snowballOwner dummy
#used by arrows for bounce ability
scoreboard objectives add x.Motion dummy
scoreboard objectives add y.Motion dummy
scoreboard objectives add z.Motion dummy
#shops
scoreboard objectives add shop dummy
scoreboard objectives add enderClick minecraft.custom:minecraft.open_enderchest
scoreboard objectives add shopState dummy
scoreboard objectives add shopItem.Bounce dummy
scoreboard objectives add shopItem.Creeper dummy
scoreboard objectives add shopItem.Hook.CD dummy
scoreboard objectives add shopItem.Hook.Damage dummy
scoreboard objectives add shopItem.Melee.Damage dummy
scoreboard objectives add shopItem.Knockback dummy
scoreboard objectives add shopItem.Grapple dummy
scoreboard objectives add shopItem.Lifesteal dummy
scoreboard objectives add shopItem.Totem dummy
scoreboard objectives add shopItem.ExtraHealth dummy
scoreboard objectives add shopItem.Goat dummy
scoreboard objectives add shopItem.Retract dummy
scoreboard objectives add gold dummy {"text": "Gold","color": "gold"}
scoreboard objectives add totalGold dummy
scoreboard players set $IncomeCycle gold 80
scoreboard players set $IncomeAmount gold 1
scoreboard players set $StartingGold gold 30
scoreboard players set $TeamkillPunishment gold 10
scoreboard objectives add dropBedrock minecraft.dropped:minecraft.bedrock
scoreboard objectives add dropPotion minecraft.dropped:minecraft.potion
#kill bounty
scoreboard objectives add bounty dummy
scoreboard players set $BaseBounty var 20
#killstreak
scoreboard objectives add killstreak dummy
#kill combos
scoreboard objectives add combo dummy
scoreboard objectives add comboTimer dummy

#armor stand ids
scoreboard objectives add armorStand.ID dummy

#map effects
scoreboard objectives add river dummy
scoreboard players set $InstantGold river 50
scoreboard objectives add elytraTimer dummy
scoreboard players set $ElytraLength river 400
scoreboard objectives add suicideTimer dummy
scoreboard players set $SuicideTime river 200
scoreboard players set $HellReward river 100
scoreboard objectives add rapidFireTimer dummy
scoreboard objectives add rapidFireChargeTimer dummy
scoreboard players set $RapidFireCharge river 60
scoreboard players set $RapidFireLength river 40

#weird inventory stuff
scoreboard objectives add numUpgrades dummy
scoreboard players set $MaxInventoryUpgrades var 3
scoreboard players set $ItemID shopItem.Creeper 1
scoreboard players set $ItemID shopItem.Bounce 2
scoreboard players set $ItemID shopItem.Knockback 3
scoreboard players set $ItemID shopItem.Grapple 4
scoreboard players set $ItemID shopItem.Lifesteal 5
scoreboard players set $ItemID shopItem.Totem 6
scoreboard players set $ItemID shopItem.Goat 7
scoreboard players set $ItemID shopItem.Retract 8
#skip hotbars 0 and 1 because hook and melee will always occupy those slots
scoreboard objectives add hotbar.2.ID dummy
scoreboard objectives add hotbar.3.ID dummy
scoreboard objectives add hotbar.4.ID dummy
scoreboard objectives add hotbar.5.ID dummy
scoreboard objectives add hotbar.6.ID dummy
scoreboard objectives add hotbar.7.ID dummy

#background music
scoreboard objectives add music dummy
scoreboard objectives add skip trigger
scoreboard players set $LastPlayed1 music -1
scoreboard players set $LastPlayed2 music -1
scoreboard players set $LastPlayed3 music -1
scoreboard players set $LastPlayed4 music -1
scoreboard players set $LastPlayed5 music -1
scoreboard players set $LastPlayed6 music -1
scoreboard players set $LastPlayed7 music -1
scoreboard players set $LastPlayed8 music -1
scoreboard players set $LastPlayed9 music -1
scoreboard players set $LastPlayed10 music -1

#RNG
scoreboard objectives add rng dummy
function pudge:general/rng/reset_seed

#Game Bossbar
bossbar add score {"text":""}

##Forceload
#lobby
forceload add 185 -39 218 -71

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
#extra teams used by river powerups for glowing effect
team add gold
team modify gold color gold
team add light_purple
team modify light_purple color light_purple
team add dark_gray
team modify dark_gray color dark_gray

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
gamerule showDeathMessages false
gamerule spectatorsGenerateChunks true
gamerule sendCommandFeedback false