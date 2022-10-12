execute if entity @s[tag=editing.VictoryKills] run function pudge:lobby/settings/custom_value/general/victory_kills
execute if entity @s[tag=editing.VictoryTime] run function pudge:lobby/settings/custom_value/general/victory_time
execute if entity @s[tag=editing.HookCD] run function pudge:lobby/settings/custom_value/shop1/hook_cd
execute if entity @s[tag=editing.HookDamage] run function pudge:lobby/settings/custom_value/shop1/hook_damage
execute if entity @s[tag=editing.Bounce] run function pudge:lobby/settings/custom_value/shop1/bounce
execute if entity @s[tag=editing.MeleeDamage] run function pudge:lobby/settings/custom_value/shop1/melee_damage
execute if entity @s[tag=editing.ExtraHealth] run function pudge:lobby/settings/custom_value/shop1/extra_health
execute if entity @s[tag=editing.Heal] run function pudge:lobby/settings/custom_value/shop1/heal
execute if entity @s[tag=editing.Haste] run function pudge:lobby/settings/custom_value/shop1/haste
execute if entity @s[tag=editing.RangedAP] run function pudge:lobby/settings/custom_value/shop1/ranged_ap

execute at @s run playsound entity.experience_orb.pickup ambient @s ~ ~ ~
function pudge:lobby/settings/display/update
scoreboard players reset @s value