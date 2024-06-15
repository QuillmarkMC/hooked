#convert seconds remaining into minutes and seconds for display
scoreboard players operation $Num1 math = $TimeLeftSeconds var
scoreboard players operation $Num2 math = $TimeLeftSeconds var
scoreboard players operation $Num1 math /= #60 math
scoreboard players operation $Num2 math %= #60 math
execute if score $Num2 math matches 10.. run bossbar set score name [{"text":"Red: ","color":"red"},{"score":{"name":"$RedScore","objective":"var"},"color":"white"},{"text":"       "},{"text":"Time remaining: ","color":"#999999"},{"score":{"name":"$Num1","objective":"math"},"color":"white"},{"text": ":","color": "white"},{"score":{"name":"$Num2","objective":"math"},"color":"white"},{"text":"       "},{"text":"Blue: ","color":"blue"},{"score":{"name":"$BlueScore","objective":"var"},"color":"white"}]
execute if score $Num2 math matches ..9 run bossbar set score name [{"text":"Red: ","color":"red"},{"score":{"name":"$RedScore","objective":"var"},"color":"white"},{"text":"       "},{"text":"Time remaining: ","color":"#999999"},{"score":{"name":"$Num1","objective":"math"},"color":"white"},{"text": ":0","color": "white"},{"score":{"name":"$Num2","objective":"math"},"color":"white"},{"text":"       "},{"text":"Blue: ","color":"blue"},{"score":{"name":"$BlueScore","objective":"var"},"color":"white"}]
