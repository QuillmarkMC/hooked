# @s = attacker
# attacker = tempAttackerTag, receiver = tempReceiverTag
tag @s add tempAttackerTag
execute if entity @s[advancements={entity_hit_matching:on_hit={target=true}}] run function entity_hit_matching:find_entity


tag @a[tag=tempReceiverTag,limit=1] remove tempReceiverTag
tag @s remove tempAttackerTag
advancement revoke @s only entity_hit_matching:on_hit
