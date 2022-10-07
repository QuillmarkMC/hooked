#scheduled once per second
#max length timer
execute unless score $Debug var matches 1.. run scoreboard players remove $GameTime timers 1
#no kills timer
execute unless score $Debug var matches 1.. run scoreboard players remove $KillTime timers 1
#check online players
execute store result score $OnlinePlayers timers if entity @a[tag=isGamer]

#end game if timers reach 0
execute if score $GameTime timers matches ..0 run function pudge:game/postgame/early_end/time
execute if score $KillTime timers matches ..0 unless score $GameTime timers matches ..0 run function pudge:game/postgame/early_end/kills
#end game if no online players
execute if score $OnlinePlayers timers matches ..0 unless score $KillTime timers matches ..0 unless score $GameTime timers matches ..0 run function pudge:lobby/load

execute unless score $KillTime timers matches ..0 unless score $GameTime timers matches ..0 unless score $OnlinePlayers timers matches ..0 unless score $Winner cutscene matches 1.. run schedule function pudge:game/scheduled_timers/seconds 1s