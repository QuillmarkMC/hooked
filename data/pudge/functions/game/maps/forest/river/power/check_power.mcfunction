#debug message
execute if score $Debug var matches 1.. run say pudge/game/maps/river/power/check_power.mcfunction

execute if entity @s[advancements={pudge:attack_slime={hell=true}}] run function pudge:game/maps/forest/river/power/hell/start
execute if entity @s[advancements={pudge:attack_slime={gold=true}}] run function pudge:game/maps/forest/river/power/gold/start
execute if entity @s[advancements={pudge:attack_slime={hook=true}}] run function pudge:game/maps/forest/river/power/hook/start
execute if entity @s[advancements={pudge:attack_slime={elytra=true}}] run function pudge:game/maps/forest/river/power/elytra/start
execute if entity @s[advancements={pudge:attack_slime={suicide=true}}] run function pudge:game/maps/forest/river/power/suicide/start
execute if entity @s[advancements={pudge:attack_slime={rapid_fire=true}}] run function pudge:game/maps/forest/river/power/rapid_fire/start

advancement revoke @s only pudge:attack_slime
