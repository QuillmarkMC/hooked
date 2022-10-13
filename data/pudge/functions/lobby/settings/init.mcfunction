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
scoreboard players operation $IncomeCycle shop = $IncomeCycle lobbysigns.default
scoreboard players operation $IncomeAmount shop = $IncomeAmount lobbysigns.default
scoreboard players operation $StartingGold shop = $StartingGold lobbysigns.default
scoreboard players operation $TeamkillPunishment shop = TeamkillPunishment lobbysigns.default
scoreboard players operation $BaseBounty var = $BaseBounty lobbysigns.default
scoreboard players operation $MaxInventoryUpgrades var = $MaxInventoryUpgrades lobbysigns.default
scoreboard players operation $RespawnDelay var = $RespawnDelay lobbysigns.default

#shop1+2
function pudge:game/shop/reset_costs

function pudge:lobby/settings/display/update