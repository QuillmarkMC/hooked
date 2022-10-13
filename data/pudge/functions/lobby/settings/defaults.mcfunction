#set default values for lobby settings
scoreboard players set $Page lobbysigns.default 1
scoreboard players set $Locked lobbysigns.default 0

#general
scoreboard players set $VictoryType lobbysigns.default 1
scoreboard players set $TotalRequiredKills lobbysigns.default 60
scoreboard players set $TotalTimeMinutes lobbysigns.default 20
scoreboard players set $GameMode lobbysigns.default 1

#maps
scoreboard players set $LoadMap lobbysigns.default 1
scoreboard players set $IncomeCycle lobbysigns.default 80
scoreboard players set $IncomeAmount lobbysigns.default 1
scoreboard players set $StartingGold lobbysigns.default 30
scoreboard players set $TeamkillPunishment lobbysigns.default 10
scoreboard players set $BaseBounty lobbysigns.default 20
scoreboard players set $MaxInventoryUpgrades lobbysigns.default 3
scoreboard players set $RespawnDelay lobbysigns.default 100

#shop
function pudge:game/shop/set_default_costs