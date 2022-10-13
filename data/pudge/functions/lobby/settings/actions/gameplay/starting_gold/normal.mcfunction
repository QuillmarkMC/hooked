scoreboard players add $StartingGold.State lobbysigns 1
execute unless score $StartingGold.State lobbysigns matches 0..4 run scoreboard players set $StartingGold.State lobbysigns 0
execute if score $StartingGold.State lobbysigns matches 0 run scoreboard players set $StartingGold shop 30
execute if score $StartingGold.State lobbysigns matches 1 run scoreboard players set $StartingGold shop 25
execute if score $StartingGold.State lobbysigns matches 2 run scoreboard players set $StartingGold shop 10
execute if score $StartingGold.State lobbysigns matches 3 run scoreboard players set $StartingGold shop 50
execute if score $StartingGold.State lobbysigns matches 4 run scoreboard players set $StartingGold shop 35
