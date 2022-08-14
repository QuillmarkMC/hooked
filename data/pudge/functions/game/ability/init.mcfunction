#reset various ability stats
scoreboard players operation @s meleeDamage = $MeleeInitDamage abilityVar
scoreboard players operation @s hookDamage = $HookInitDamage abilityVar
scoreboard players operation @s creeperDamage = $CreeperInitDamage abilityVar
scoreboard players operation @s creeperExplosion = $CreeperInitExplosion abilityVar
#kill bounty
scoreboard players operation @s bounty = $BaseBounty var