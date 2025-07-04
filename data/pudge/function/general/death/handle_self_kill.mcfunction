#called when a player kills themselves with weapon/ability, handles kill credit logic
# @s = receiver
scoreboard players set #SkipDeath death 1
scoreboard players operation #Temp death = @s lastDamagedBy
execute as @a[tag=!tempReceiverTag] if score @s entityid = #Temp death run tag @s add tempSelfDeathAttackerTag
execute as @a[tag=tempSelfDeathAttackerTag,limit=1] run function pudge:general/death/count_kill
scoreboard players set #SkipDeath death 0

#announce death to attacker and receiver
execute unless score @s teamID = @a[tag=tempSelfDeathAttackerTag,limit=1] teamID run tellraw @a[tag=tempSelfDeathAttackerTag,limit=1] [{"text": "(+) ","color": "green"},{"text":"","extra":[{"selector":"@s"}]},{"translate": "text.general.selfkill.credit.1","color": "white"},{"text":"","extra":[{"selector":"@a[tag=tempSelfDeathAttackerTag,limit=1]"}]},{"translate": "text.general.selfkill.credit.2","color": "white"},{"score":{"name":"@s","objective":"bounty"},"color": "gold"},{"translate": "text.general.selfkill.credit.3","color": "gold"}]
execute unless score @s teamID = @a[tag=tempSelfDeathAttackerTag,limit=1] teamID run tellraw @s [{"text": "(-) ","color": "red"},{"text":"","extra":[{"selector":"@s"}]},{"translate": "text.general.selfkill.credit.1","color": "white"},{"text":"","extra":[{"selector":"@a[tag=tempSelfDeathAttackerTag,limit=1]"}]},{"translate": "text.general.selfkill.credit.2","color": "white"},{"score":{"name":"@s","objective":"bounty"},"color": "gold"},{"translate": "text.general.selfkill.credit.3","color": "gold"}]
execute if score @s teamID = @a[tag=tempSelfDeathAttackerTag,limit=1] teamID run tellraw @s [{"text": "(-) ","color": "red"},{"text":"","extra":[{"selector":"@s"}]},{"translate": "text.general.selfkill.teammate","color": "white"}]

tag @a[tag=tempSelfDeathAttackerTag] remove tempSelfDeathAttackerTag