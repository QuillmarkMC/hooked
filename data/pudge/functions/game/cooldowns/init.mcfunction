#set all ability cooldowns to their starting values
scoreboard players operation @s cdHookCurrent = $HookCD abilityVar
scoreboard players set @s cdHook -1

advancement grant @s only pudge:inv_change