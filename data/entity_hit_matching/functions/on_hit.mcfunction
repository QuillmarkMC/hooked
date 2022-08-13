# @s = player that was attacked
tag @s add tempReceiverTag

#determine what item was used to attack, deal damage accordingly
execute if data entity @a[tag=tempAttackerTag,limit=1] SelectedItem.tag.Melee run function pudge:game/ability/melee/check_swing