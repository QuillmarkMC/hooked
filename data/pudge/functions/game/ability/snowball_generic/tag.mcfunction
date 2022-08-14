#set owner scoreboard based on entity id of thrower
execute at @s positioned ~ ~1 ~ run scoreboard players operation @e[type=snowball,sort=nearest,limit=1] snowballOwner = @s entityid
execute as @e[type=snowball,tag=!InitSnowball,nbt={Item:{tag:{CustomSnowball:1b}}}] at @s run function pudge:game/ability/snowball_generic/new
advancement revoke @s only pudge:throw_snowball