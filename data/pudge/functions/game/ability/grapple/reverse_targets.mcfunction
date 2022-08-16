#reverses tags of attacker and receiver
# @s = attacker
tag @s remove tempAttackerTag
tag @a[tag=tempReceiverTag,limit=1] add tempAttackerTag
tag @a remove tempReceiverTag
tag @s add tempReceiverTag

execute as @a[tag=tempAttackerTag,limit=1] run function pudge:game/ability/grapple/begin