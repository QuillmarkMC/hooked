#called when blue team has required points to win
scoreboard players set $Winner cutscene 3
#black screen
title @a times 20 40 20
title @a title {"text":"\uE006"}
#remove other stuff from /title command
scoreboard players reset @a suicideTimer
scoreboard players set @a elytraTimer -1
scoreboard players set @a rapidFireChargeTimer -1
#queue stats start
schedule function pudge:game/postgame/game_stats/start 50t