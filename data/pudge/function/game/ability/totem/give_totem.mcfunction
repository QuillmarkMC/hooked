#called when a totem chance succeeded, needs to force play the totem of undying animation
tag @s add hasTotem
advancement grant @s only pudge:inv_change
scoreboard players set @s stupidTotemFix 1