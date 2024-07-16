#debug message
execute if score $Debug var matches 1.. run say pudge:game/ability/creeper/explode

# @s = area effect cloud of specific creeper ability
scoreboard players operation #Temp var = @s snowballOwner
execute as @a[tag=isGamer] if score @s entityid = #Temp var run tag @s add tempAttackerTag

#summon creepers based on ability level
execute at @s if score @a[tag=tempAttackerTag,limit=1] creeperExplosion matches 1.. run summon creeper ~ ~ ~ {ExplosionRadius:3,Fuse:0,Invulnerable:true}
execute at @s if score @a[tag=tempAttackerTag,limit=1] creeperExplosion matches 2.. run summon creeper ~ ~ ~ {ExplosionRadius:3,Fuse:0,Invulnerable:true}
execute at @s if score @a[tag=tempAttackerTag,limit=1] creeperExplosion matches 3.. run summon creeper ~ ~ ~ {ExplosionRadius:3,Fuse:0,Invulnerable:true}
#deal damage and handle death/kill tracking logic
execute at @s as @a[tag=isGamer,gamemode=adventure,distance=..6] run function pudge:game/ability/creeper/damage

tag @a[tag=tempAttackerTag,limit=1] remove tempAttackerTag