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
#late shop item detection (place after all inventory updates) (runs only if player did not have an alternate inventory update this tick)
execute as @a[tag=shopInteractDetect] run advancement grant @s only pudge:inv_change
#dead players
execute as @a[tag=dead] run function pudge:general/death/while_dead

#tick map effects
execute if score $LoadMap var matches 1 run function pudge:game/maps/forest/tick

#gold tick function
function pudge:game/gold/tick

#combo tick function
execute as @a[scores={comboTimer=1..}] run function pudge:game/killstreak/combo/tick

#border check?
execute at @e[type=marker,tag=gameSpectatorSpawn,limit=1] as @a[gamemode=spectator,distance=80..,tag=!dead] run tp @s ~ ~ ~
#ability effects
execute as @a[scores={hookTimer=1..}] run function pudge:game/ability/hook/move
execute as @e[type=arrow,scores={bounceCount=1..}] run function pudge:game/ability/bounce/arrow_tick
#tutorial book
#effects
effect give @a minecraft:saturation 999999 255 true
effect give @a minecraft:resistance 999999 10 true
#tick damage check
scoreboard players set @a resist 0
#arrows
execute as @e[type=arrow] unless entity @s[nbt={pickup:0b}] run data modify entity @s pickup set value 0
#snowballs
function pudge:game/ability/snowball_generic/tick