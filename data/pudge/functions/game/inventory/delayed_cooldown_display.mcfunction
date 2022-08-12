#function is run every 0.5 seconds, updates inventory of players with abilities on cooldown
#execute as @a[tag=isGamer,tag=hasCooldown] run advancement grant @s only pudge:inv_change
#schedule function pudge:game/inventory/queue_update 10t
#################################################################################################
#instead of updating player inventories every tick for items on cooldown, instead only update them every "$DisplayUpdateInterval abilityVar" number of ticks
scoreboard players remove $CooldownDisplayUpdate var 1
execute if score $CooldownDisplayUpdate var matches ..0 as @a[tag=isGamer,tag=hasCooldown] run advancement grant @s only pudge:inv_change
execute if score $CooldownDisplayUpdate var matches ..0 run scoreboard players operation $CooldownDisplayUpdate var = $DisplayUpdateInterval abilityVar