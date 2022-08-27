#handle health regeneration
execute as @a[gamemode=adventure] run scoreboard players remove @s healthRegen 1
execute as @a[gamemode=adventure] if score @s healthRegen matches ..0 run scoreboard players add @s health 1
execute as @a[gamemode=adventure] if score @s healthRegen matches ..0 run scoreboard players operation @s healthRegen = $RegenTime healthRegen
#upper bound on health
execute as @a if score @s health > @s maxHealth run scoreboard players operation @s health = @s maxHealth
#display health on actionbar
execute as @a[gamemode=adventure] run function pudge:general/health/display
#kill players with 0 or less health
execute as @a[scores={health=..0}] run function pudge:general/death/on_death