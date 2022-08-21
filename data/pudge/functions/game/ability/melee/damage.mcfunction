# @s = receiver

#deal damage to receiver based on attacker's damage stat on melee weapon
scoreboard players operation $Num1 math = @a[tag=tempAttackerTag,limit=1] meleeDamage
execute if score #Temp resist matches 2 run function pudge:general/math/times_1.5

scoreboard players operation @s health -= $Num1 math
execute unless entity @s[tag=tempAttackerTag] run scoreboard players operation @s lastDamagedBy = @a[tag=tempAttackerTag,limit=1] entityid
execute if score @s health matches ..0 as @a[tag=tempAttackerTag,limit=1] run function pudge:general/death/count_kill