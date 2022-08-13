# @s = player that was attacked
#debug message
execute if score $Debug var matches 1.. run say entity_hit_matching/on_hit.mcfunction

tag @s add tempReceiverTag

#determine what item was used to attack, deal damage accordingly
execute if data entity @a[tag=tempAttackerTag,limit=1] SelectedItem.tag.Melee run function pudge:game/ability/melee/check_swing
execute if entity @a[tag=tempAttackerTag,limit=1,advancements={entity_hit_matching:on_hit={hookarrow=true}}] run say HOOKED SUCCESS