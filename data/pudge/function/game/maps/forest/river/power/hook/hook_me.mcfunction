# @s = receiver
tag @s add tempReceiverTag
execute if score @s hookTimer matches 1.. run function pudge:game/ability/hook/end

scoreboard players set #TotemTest totemChance 0
execute if score @s totemChance matches 1.. run function pudge:game/ability/totem/try

execute unless score #TotemTest totemChance matches 1 as @a[tag=tempAttackerTag,limit=1] run function pudge:game/ability/hook/begin
effect give @s instant_damage 1 0 true

tag @s remove tempReceiverTag