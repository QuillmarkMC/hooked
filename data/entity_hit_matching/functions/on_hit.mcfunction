# @s = player that was attacked
execute if entity @s[advancements={ctf:fisherman/hooked=true}] run tag @s add tempHookHitTag
advancement revoke @s only ctf:fisherman/hooked