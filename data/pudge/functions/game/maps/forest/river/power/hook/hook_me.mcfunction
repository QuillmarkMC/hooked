# @s = receiver
tag @s add tempReceiverTag
execute if score @s hookTimer matches 1.. run function pudge:game/ability/hook/end
execute as @a[tag=tempAttackerTag,limit=1] run function pudge:game/ability/hook/begin

tag @s remove tempReceiverTag