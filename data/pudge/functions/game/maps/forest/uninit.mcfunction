schedule clear pudge:game/maps/forest/fountain_particles_down
schedule clear pudge:game/maps/forest/fountain_particles_up

execute as @e[type=area_effect_cloud,tag=riverAEC] run function pudge:game/maps/forest/river/kill_power

forceload remove 22 25 89 23