#randomly select a side to spawn the powerup from
execute store success score $RNG river if predicate pudge:50_percent

execute if score $RNG river matches 0 positioned 56.5 58.0 -32.0 rotated 0 0 run function pudge:game/maps/forest/river/spawn/summon
execute if score $RNG river matches 1 positioned 56.5 58.0 70.0 rotated 180 0 run function pudge:game/maps/forest/river/spawn/summon