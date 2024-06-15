scoreboard players operation $GameMode var *= #-1 math
execute if score $GameMode var matches -1 run scoreboard players set $BounceCost shop 0
execute if score $GameMode var matches 1 run scoreboard players operation $BounceCost shop = $BounceCost.Default shop