scoreboard players add $BaseBounty.State lobbysigns 1
execute unless score $BaseBounty.State lobbysigns matches 0..4 run scoreboard players set $BaseBounty.State lobbysigns 0
execute if score $BaseBounty.State lobbysigns matches 0 run scoreboard players set $BaseBounty var 20
execute if score $BaseBounty.State lobbysigns matches 1 run scoreboard players set $BaseBounty var 15
execute if score $BaseBounty.State lobbysigns matches 2 run scoreboard players set $BaseBounty var 10
execute if score $BaseBounty.State lobbysigns matches 3 run scoreboard players set $BaseBounty var 40
execute if score $BaseBounty.State lobbysigns matches 4 run scoreboard players set $BaseBounty var 25
