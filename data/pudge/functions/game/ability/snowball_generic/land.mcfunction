#determine attacker based on snowball owner scoreboard
scoreboard players operation $Temp snowballOwner = @s snowballOwner
execute as @a[tag=isGamer] if score @s entityid = $Temp snowballOwner run tag @s add tempAttackerTag

execute if entity @s[tag=CreeperSnowball] run function pudge:game/ability/creeper/explode
kill @s