# @s is the player that got hit by an arrow
execute if entity @s[advancements={entity_hit_matching:on_hurt={target=true}}] run function entity_hit_matching:find_entity1
tag @s add tempReceiverTag
execute if score $Temp var matches 1 as @a[tag=tempAttackerTag,limit=1] run function pudge:game/ability/hook/begin

tag @s remove tempReceiverTag
tag @a[tag=tempAttackerTag,limit=1] remove tempAttackerTag
advancement revoke @s only entity_hit_matching:on_hurt