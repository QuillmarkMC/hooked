execute unless score $Winner cutscene matches 1.. run title @a subtitle ""
execute unless score $Winner cutscene matches 1.. run title @a times 0 18 0
execute unless score $Winner cutscene matches 1.. run title @a title "\uE006"

#stopsound @a record pudge:game.music.hell
stopsound @a record pudge:game.music.fast_piggy
execute as @a at @s run playsound pudge:game.music.record_scratch record @s