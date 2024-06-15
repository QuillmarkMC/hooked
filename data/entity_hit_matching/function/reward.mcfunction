# @s = attacker
#debug message
execute if score $Debug var matches 1.. run say entity_hit_matching:reward

# attacker = tempAttackerTag, receiver = tempReceiverTag
tag @s add tempAttackerTag
execute if entity @s[advancements={entity_hit_matching:on_hit={target=true}}] run function entity_hit_matching:find_entity

tag @a[tag=tempReceiverTag,limit=1] remove tempReceiverTag
tag @a[tag=tempAttackerTag,limit=1] remove tempAttackerTag
advancement revoke @s only entity_hit_matching:on_hit
