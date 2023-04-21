#called when both teams are tied for points at the end of the game
scoreboard players set $Winner cutscene 3
#black screen
title @a times 20 40 20
title @a title {"text":"\uE006"}
#remove other stuff from /title command
scoreboard players reset @a suicideTimer
scoreboard players set @a elytraTimer -1
scoreboard players set @a rapidFireChargeTimer -1
scoreboard players set @a adrenalineTimer -1
#queue stats start
schedule function pudge:game/postgame/game_stats/start 50t