scoreboard players remove $StartCountdown var 1
execute if score $StartCountdown var matches 1..5 run title @a times 2 10 8
execute if score $StartCountdown var matches 1..5 run title @a title {"score":{"name":"$StartCountdown","objective":"var"}}
execute if score $StartCountdown var matches 1..5 as @a at @s run playsound minecraft:block.note_block.chime master @s ~ ~ ~
execute if score $StartCountdown var matches 0 run function pudge:game/pregame/game_start
execute if score $StartCountdown var matches 1.. run schedule function pudge:game/pregame/forest/countdown 1s replace