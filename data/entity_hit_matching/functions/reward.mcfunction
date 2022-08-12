# @s = attacker
execute if entity @s[advancements={entity_hit_matching:on_hit={target=true}}] run function entity_hit_matching:find_entity

execute if entity @a[tag=tempHookHitTag] unless score @a[tag=tempHookHitTag,limit=1] fm_hook_id matches 1.. run function ctf:game/classes/fisherman/power/hook/begin
tag @a[tag=tempHookHitTag,limit=1] remove tempHookHitTag
advancement revoke @s only entity_hit_matching:on_hit
