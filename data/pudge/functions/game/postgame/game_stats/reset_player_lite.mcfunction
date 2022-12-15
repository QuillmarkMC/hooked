#end any in progress abilities
execute if score @s hookID matches 1.. run function pudge:game/ability/hook/end
execute if score @s grappleID matches 1.. run function pudge:game/ability/grapple/end

#cleanly revive player
execute if entity @s[tag=dead] run function pudge:general/death/revive

scoreboard players reset @s suicideTimer
scoreboard players reset @s elytraTimer
scoreboard players reset @s rapidFireChargeTimer
scoreboard players reset @s rapidFireTimer
scoreboard players reset @s lastDamagedBy
scoreboard players reset @s skip
scoreboard players reset @s surrender
