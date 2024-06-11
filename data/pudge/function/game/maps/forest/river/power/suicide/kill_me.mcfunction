tag @s add tempReceiverTag
execute as @a[tag=tempAttackerTag,limit=1] run function pudge:general/death/count_kill
tag @s remove tempReceiverTag