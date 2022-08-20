#tick power up spawns in the river
execute unless score $HellActive river matches 1.. run scoreboard players remove $RiverPowerSpawn river 1
execute if score $RiverPowerSpawn river matches ..0 run function pudge:game/maps/forest/river/spawn/pick_side
execute if score $RiverPowerSpawn river matches ..0 run scoreboard players operation $RiverPowerSpawn river = $RiverPowerSpawnDelay river

execute as @e[type=armor_stand,tag=riverAEC] run function pudge:game/maps/forest/river/move_power

#elytra players
execute as @a[scores={elytraTimer=1..}] run scoreboard players remove @s elytraTimer 1
execute as @a[scores={elytraTimer=0}] run function pudge:game/maps/forest/river/power/elytra/end

#suicide players
execute as @a[scores={suicideTimer=1..}] run function pudge:game/maps/forest/river/power/suicide/timer