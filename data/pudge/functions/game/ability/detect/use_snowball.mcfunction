scoreboard players set $Temp snowball 0

execute at @s positioned ~ ~1 ~ run scoreboard players operation @e[type=snowball,sort=nearest,limit=1] snowballOwner = @s entityid
execute if data entity @e[type=snowball,sort=nearest,limit=1] Item.tag.CreeperSnowball run scoreboard players operation @s cdCreeper = @s cdCreeperCurrent

tag @s add hasCooldown
scoreboard players set @s snowball 0

advancement grant @s only pudge:inv_change