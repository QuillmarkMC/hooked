#reset various ability stats
scoreboard players operation @s meleeDamage = $MeleeInitDamage abilityVar
scoreboard players operation @s hookDamage = $HookInitDamage abilityVar
scoreboard players operation @s creeperDamage = $CreeperInitDamage abilityVar
scoreboard players operation @s creeperExplosion = $CreeperInitExplosion abilityVar
scoreboard players set @s bounceCount 0
scoreboard players operation @s knockbackLevel = $KnockbackInitLevel abilityVar
scoreboard players operation @s lifestealAmount = $LifestealInitAmount abilityVar
scoreboard players operation @s lifestealRegen = $LifestealInitRegen abilityVar
scoreboard players operation @s totemChance = $TotemInitChance abilityVar
#kill bounty
scoreboard players operation @s bounty = $BaseBounty var