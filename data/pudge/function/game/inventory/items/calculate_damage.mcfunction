scoreboard players operation $final_damage durability = $my_cooldown durability
scoreboard players operation $final_damage durability *= $max_durability durability
scoreboard players operation $final_damage durability /= $max_cooldown durability
scoreboard players operation $final_damage durability *= #-1 durability
scoreboard players operation $final_damage durability += $max_durability durability