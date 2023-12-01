# From execute pos/dir, get motion
#   Also takes $proj_power bossdata for motion modification
# Outputs to pudge:motion Motion
#debug message
execute if score $Debug var matches 1.. run say pudge:game/maps/forest/river/power/rapid_fire/get_motion

summon marker ^ ^ ^0.01 {Tags:["boss_proj_calc"]}

#get self pos
execute store result score $x1 rapidFireTimer run data get entity @s Pos[0] 10000
execute store result score $y1 rapidFireTimer run data get entity @s Pos[1] 10000
execute store result score $z1 rapidFireTimer run data get entity @s Pos[2] 10000

#get marker pos
execute store result score $x2 rapidFireTimer run data get entity @e[type=marker,limit=1,tag=boss_proj_calc] Pos[0] 10000
execute store result score $y2 rapidFireTimer run data get entity @e[type=marker,limit=1,tag=boss_proj_calc] Pos[1] 10000
execute store result score $z2 rapidFireTimer run data get entity @e[type=marker,limit=1,tag=boss_proj_calc] Pos[2] 10000

kill @e[type=marker,limit=1,tag=boss_proj_calc]

# Math Time!

scoreboard players operation $x_diff rapidFireTimer = $x2 rapidFireTimer
scoreboard players operation $x_diff rapidFireTimer -= $x1 rapidFireTimer
scoreboard players operation $y_diff rapidFireTimer = $y2 rapidFireTimer
scoreboard players operation $y_diff rapidFireTimer -= $y1 rapidFireTimer
scoreboard players operation $z_diff rapidFireTimer = $z2 rapidFireTimer
scoreboard players operation $z_diff rapidFireTimer -= $z1 rapidFireTimer
scoreboard players operation $x_diff rapidFireTimer *= $proj_power rapidFireTimer
scoreboard players operation $y_diff rapidFireTimer *= $proj_power rapidFireTimer
scoreboard players operation $z_diff rapidFireTimer *= $proj_power rapidFireTimer

# Give Output
data modify storage pudge:motion Motion set value [0d, 0d, 0d]
execute store result storage pudge:motion Motion[0] double 0.0001 run scoreboard players get $x_diff rapidFireTimer
execute store result storage pudge:motion Motion[1] double 0.0001 run scoreboard players get $y_diff rapidFireTimer
execute store result storage pudge:motion Motion[2] double 0.0001 run scoreboard players get $z_diff rapidFireTimer