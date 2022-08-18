# yes i mostly stole this from a cloudwolf video
scoreboard players set #const rng 1103515245
scoreboard players operation $rand rng *= #const rng
scoreboard players add $rand rng 12345
scoreboard players operation $out rng = $rand rng
execute if score $out rng matches ..0 run scoreboard players operation $out rng *= #-1 rng
scoreboard players operation $out rng %= $max rng