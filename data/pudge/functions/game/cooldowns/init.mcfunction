#set all ability cooldowns to their starting values
scoreboard players operation @s cdHookCurrent = $HookCD abilityVar
scoreboard players set @s cdHook -1

scoreboard players operation @s cdCreeperCurrent = $CreeperCD abilityVar
scoreboard players set @s cdCreeper -1

#bounce is a passive and doesnt go on cooldown
scoreboard players operation @s cdBounce = $BounceCD abilityVar

#knockback stick has no cd currently
scoreboard players operation @s cdKnockback = $KnockbackCD abilityVar

scoreboard players operation @s cdGrappleCurrent = $GrappleCD abilityVar
scoreboard players set @s cdGrapple -1