execute if score @s lobbysigns matches 1..99 run function pudge:lobby/triggers/signs/other
execute if score @s lobbysigns matches 100..199 run function pudge:lobby/triggers/signs/general
execute if score @s lobbysigns matches 200..299 run function pudge:lobby/triggers/signs/gameplay
execute if score @s lobbysigns matches 300..399 run function pudge:lobby/triggers/signs/shop1
execute if score @s lobbysigns matches 400..499 run function pudge:lobby/triggers/signs/shop2
execute if score @s lobbysigns matches 500..599 run function pudge:lobby/triggers/signs/credits

execute unless score @s lobbysigns matches 1..2 at @s run playsound block.wooden_button.click_on ambient @s ~ ~ ~ 0.75 0.75

function pudge:lobby/settings/display/update
scoreboard players set @s lobbysigns 0