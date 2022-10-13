#check if this setting is disabled by gamemode
execute if score $GameMode var matches 1 if entity @s[predicate=pudge:sneaking] run function pudge:lobby/settings/actions/shop1/bounce/custom
execute if score $GameMode var matches 1 unless entity @s[predicate=pudge:sneaking] run function pudge:lobby/settings/actions/shop1/bounce/normal
execute unless score $GameMode var matches 1 run tellraw @s [{"text": ""},{"text": "[!] ","color": "blue","bold": true},{"text":"This item's price is being controlled by the selected game mode, and cannot be changed."}]
