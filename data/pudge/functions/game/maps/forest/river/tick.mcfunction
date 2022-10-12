#tick power up spawns in the river
execute if score $GameMode var matches 1 unless score $HellActive river matches 1.. run scoreboard players remove $RiverPowerSpawn river 1
execute if score $GameMode var matches -1 unless score $Winner cutscene matches 1.. run function pudge:game/maps/forest/river/gamemode/rapid_fire_tick
execute if score $RiverPowerSpawn river matches ..0 run function pudge:game/maps/forest/river/spawn/pick_side
execute if score $RiverPowerSpawn river matches ..0 run scoreboard players operation $RiverPowerSpawn river = $RiverPowerSpawnDelay river

execute as @e[type=armor_stand,tag=riverAEC] run function pudge:game/maps/forest/river/move_power

#elytra players
execute as @a[scores={elytraTimer=1..}] run function pudge:game/maps/forest/river/power/elytra/timer
execute as @a[scores={elytraTimer=0}] run function pudge:game/maps/forest/river/power/elytra/end

#suicide players
execute as @a[scores={suicideTimer=1..}] run function pudge:game/maps/forest/river/power/suicide/timer

#rapid fire
execute as @a[scores={rapidFireChargeTimer=1..}] run function pudge:game/maps/forest/river/power/rapid_fire/charge
execute as @a[scores={rapidFireTimer=1..}] run function pudge:game/maps/forest/river/power/rapid_fire/timer