item replace entity @s hotbar.1 with wooden_axe[custom_name='{"text":"Hatchet","color":"yellow","bold":true,"italic":false}',lore=['{"text":" "}'],unbreakable={show_in_tooltip:false},custom_data={Melee:1},attribute_modifiers={modifiers:[{type:"generic.attack_damage",name:"generic.attack_damage",amount:10.0,operation:"add_value",uuid:[I;1880073000,1588218595,-1186509958,-1012770880],slot:"mainhand"},{type:"generic.attack_speed",name:"generic.attack_speed",amount:-2.4,operation:"add_value",uuid:[I;-1340156882,-906080860,-1471885107,-1542458603],slot:"mainhand"}],show_in_tooltip:false},hide_additional_tooltip={}]

#dynamic item lore
item modify entity @s hotbar.1 pudge:lore/melee_tooltip
scoreboard players operation $Num1 math = @s meleeDamage
function pudge:general/math/convert_to_lore
item modify entity @s hotbar.1 pudge:lore/damage
item modify entity @s hotbar.1 pudge:lore/attack_speed
item modify entity @s hotbar.1 pudge:lore/crit_multiply