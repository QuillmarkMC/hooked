# @s = player that was attacked
#debug message
execute if score $Debug var matches 1.. run say entity_hit_matching/on_hit.mcfunction

tag @s add tempReceiverTag

#determine what item was used to attack, deal damage/set data accordingly
execute if data entity @a[tag=tempAttackerTag,limit=1] SelectedItem.tag.Melee run function pudge:game/ability/melee/check_swing

execute if entity @a[tag=tempAttackerTag,limit=1,advancements={entity_hit_matching:on_hit={hookarrow=true}}] if score @s hookID matches 0.. unless score @s hookID = @a[tag=tempAttackerTag,limit=1] entityid run function pudge:game/ability/hook/execute
execute if entity @a[tag=tempAttackerTag,limit=1,advancements={entity_hit_matching:on_hit={hookarrow=true}}] unless score @s hookID matches 0.. unless entity @s[tag=dead] as @a[tag=tempAttackerTag,limit=1] run function pudge:game/ability/hook/begin
execute if entity @a[tag=tempAttackerTag,limit=1,advancements={entity_hit_matching:on_hit={grapplearrow=true}}] as @a[tag=tempAttackerTag,limit=1] run function pudge:game/ability/grapple/reverse_targets
#execute if entity @a[tag=tempAttackerTag,limit=1,advancements={entity_hit_matching:on_hit={hookarrow=true}}] run say HOOK SUCCESS