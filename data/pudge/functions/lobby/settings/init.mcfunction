#initialize/reset lobby config options
scoreboard players set $Page lobbysigns 1
execute unless score $Locked lobbysigns matches 1 run scoreboard players set $Locked lobbysigns 0

#general
scoreboard players set $VictoryType lobbysigns 1
scoreboard players set $TotalRequiredKills var 60
scoreboard players set $TotalTimeMinutes var 20
scoreboard players set $GameMode var 1
scoreboard players set $VictoryTime.State lobbysigns 0
scoreboard players set $VictoryKills.State lobbysigns 0
scoreboard players set $Soundtrack music 0

#gameplay
scoreboard players set $LoadMap var 1
execute store result score $IncomeCycleSeconds lobbysigns run scoreboard players operation $IncomeCycle gold = $IncomeCycle lobbysigns.default
scoreboard players operation $IncomeCycleSeconds lobbysigns /= #20 math
scoreboard players operation $IncomeAmount gold = $IncomeAmount lobbysigns.default
scoreboard players operation $StartingGold gold = $StartingGold lobbysigns.default
scoreboard players operation $TeamkillPunishment gold = TeamkillPunishment lobbysigns.default
scoreboard players operation $BaseBounty var = $BaseBounty lobbysigns.default
scoreboard players operation $MaxInventoryUpgrades var = $MaxInventoryUpgrades lobbysigns.default
execute store result score $RespawnDelaySeconds lobbysigns run scoreboard players operation $RespawnDelay var = $RespawnDelay lobbysigns.default
scoreboard players operation $RespawnDelaySeconds lobbysigns /= #20 math

#shop1+2
function pudge:game/shop/reset_costs

function pudge:lobby/settings/display/update