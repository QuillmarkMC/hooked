#introduction
execute if score @s lobbysigns matches 900..909 run function pudge:lobby/triggers/info/intro/general
#combat
execute if score @s lobbysigns matches 910..919 run function pudge:lobby/triggers/info/combat/general
#shop
execute if score @s lobbysigns matches 920..939 run function pudge:lobby/triggers/info/shop/general
#river
execute if score @s lobbysigns matches 940..949 run function pudge:lobby/triggers/info/river/general
#lobby
execute if score @s lobbysigns matches 950..959 run function pudge:lobby/triggers/info/lobby/general
#commands
execute if score @s lobbysigns matches 960..969 run function pudge:lobby/triggers/info/command/general

execute at @s run playsound block.note_block.bit ambient @s ~ ~ ~ 1 1