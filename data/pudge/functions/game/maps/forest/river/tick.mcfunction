#tick power up spawns in the river
scoreboard players remove $RiverPowerSpawn river 1
execute if score $RiverPowerSpawn river matches ..0 run function pudge:game/maps/forest/river/spawn/pick_side
execute if score $RiverPowerSpawn river matches ..0 run scoreboard players operation $RiverPowerSpawn river = $RiverPowerSpawnDelay river

execute as @e[type=area_effect_cloud,tag=riverAEC] run function pudge:game/maps/forest/river/move_power