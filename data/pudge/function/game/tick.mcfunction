#all the game logic
#shop item detection (place before all inventory updates)
execute at @e[type=marker,tag=redShop] as @a[tag=isGamer,distance=..8] run function pudge:game/shop/check
execute at @e[type=marker,tag=blueShop] as @a[tag=isGamer,distance=..8] run function pudge:game/shop/check
#cooldowns
execute as @a[tag=hasCooldown] run function pudge:game/cooldowns/update
#delayed cooldown display tracking (dont use scheduled functions because this function needs to be called right here during the tick)
function pudge:game/inventory/delayed_cooldown_display
#ability detection
execute as @a[scores={crossbow=1..}] run function pudge:game/ability/detect/use_crossbow
execute as @a[scores={snowball=1..}] run function pudge:game/ability/detect/use_snowball
execute as @a[scores={clickFungus=1..}] run function pudge:game/ability/detect/use_warped_fungus
#late shop item detection (place after all inventory updates) (runs only if player did not have an alternate inventory update this tick)
execute as @a[tag=shopInteractDetect] run advancement grant @s only pudge:inv_change
#dead players
execute as @a[tag=dead] run function pudge:general/death/while_dead

#tick map effects
execute if score $StartGame var matches 2 if score $LoadMap var matches 1 run function pudge:game/maps/forest/tick

#custom regen effect tick
execute as @a[scores={regenTimer=1..}] run function pudge:general/health/regen_effect

#gold tick function
execute if score $StartGame var matches 2 run function pudge:game/gold/tick

#combo tick function
execute as @a[scores={comboTimer=1..}] run function pudge:game/killstreak/combo/tick

#border check
execute at @e[type=marker,tag=gameSpectatorSpawn,limit=1] as @a[gamemode=spectator,distance=80..,tag=!dead] run tp @s ~ ~ ~
#out of bounds
execute as @a[gamemode=adventure,tag=isGamer] run function pudge:game/oob/tick
#ability effects
execute as @e[type=arrow,scores={bounceCount=1..}] run function pudge:game/ability/bounce/arrow_tick
execute as @a[scores={hookTimer=1..}] run function pudge:game/ability/hook/move
execute as @a[scores={grappleTimer=1..}] run function pudge:game/ability/grapple/move
execute as @a[scores={grabID=1..}] run function pudge:game/ability/grab/tick
execute as @a[scores={launchID=1..}] run function pudge:game/ability/grab/launch/tick
execute as @a[scores={grabDropDelay=1..}] run scoreboard players remove @s grabDropDelay 1
execute as @e[type=arrow,tag=grappleArrow,nbt={inGround:true}] run function pudge:game/ability/grapple/tag_player
execute as @a[scores={stupidTotemFix=0..}] run function pudge:game/ability/totem/delay_use
#consumables
execute as @a[scores={hasteTimer=1..}] run function pudge:game/consume/haste/update
execute as @a[scores={rangedAPTimer=1..}] run function pudge:game/consume/ranged_ap/update
#effects
execute as @a[scores={clearTotemEffects=0}] run function pudge:game/effects/standard
execute as @a[scores={clearTotemEffects=1..}] run function pudge:game/ability/totem/clear_effects
#tick damage check
scoreboard players set @a resist 0
#arrows
execute as @e[type=arrow] run function pudge:game/ability/arrows/tick
#snowballs
function pudge:game/ability/snowball_generic/tick

#trigger
execute as @a[scores={skip=1..}] run function pudge:game/music/skip/vote_skip
execute as @a[tag=isGamer,scores={surrender=1..}] run function pudge:game/surrender/trigger
