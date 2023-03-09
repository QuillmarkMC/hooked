#called from ranged_ap shop buy
scoreboard players operation @s rangedAPTimer = $RangedAPLength consumeVar

#multiply hook damage x1.5, save value for later
scoreboard players operation @s rangedAPValue = @s hookDamage
scoreboard players operation @s rangedAPValue /= #2 math
scoreboard players operation @s hookDamage += @s rangedAPValue

tag @s remove hasMelee
effect give @s strength infinite 0 false
#execute unless entity @s[tag=hasCooldown] run advancement grant @s only pudge:inv_change