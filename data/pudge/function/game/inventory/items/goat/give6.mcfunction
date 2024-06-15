execute if score @s goatSound matches 0 run item replace entity @s hotbar.6 with goat_horn[hide_additional_tooltip={},instrument="minecraft:ponder_goat_horn"]
execute if score @s goatSound matches 1 run item replace entity @s hotbar.6 with goat_horn[hide_additional_tooltip={},instrument="minecraft:sing_goat_horn"]
execute if score @s goatSound matches 2 run item replace entity @s hotbar.6 with goat_horn[hide_additional_tooltip={},instrument="minecraft:seek_goat_horn"]
execute if score @s goatSound matches 3 run item replace entity @s hotbar.6 with goat_horn[hide_additional_tooltip={},instrument="minecraft:feel_goat_horn"]
execute if score @s goatSound matches 4 run item replace entity @s hotbar.6 with goat_horn[hide_additional_tooltip={},instrument="minecraft:admire_goat_horn"]
execute if score @s goatSound matches 5 run item replace entity @s hotbar.6 with goat_horn[hide_additional_tooltip={},instrument="minecraft:call_goat_horn"]
execute if score @s goatSound matches 6 run item replace entity @s hotbar.6 with goat_horn[hide_additional_tooltip={},instrument="minecraft:yearn_goat_horn"]
execute if score @s goatSound matches 7 run item replace entity @s hotbar.6 with goat_horn[hide_additional_tooltip={},instrument="minecraft:dream_goat_horn"]

#dynamic item lore
item modify entity @s hotbar.6 pudge:lore/goat/goat_name
item modify entity @s hotbar.6 pudge:lore/goat/goat_tooltip
execute if score @s goatSound matches 0 run item modify entity @s hotbar.6 pudge:lore/goat/instrument/goat_ponder
execute if score @s goatSound matches 1 run item modify entity @s hotbar.6 pudge:lore/goat/instrument/goat_sing
execute if score @s goatSound matches 2 run item modify entity @s hotbar.6 pudge:lore/goat/instrument/goat_seek
execute if score @s goatSound matches 3 run item modify entity @s hotbar.6 pudge:lore/goat/instrument/goat_feel
execute if score @s goatSound matches 4 run item modify entity @s hotbar.6 pudge:lore/goat/instrument/goat_admire
execute if score @s goatSound matches 5 run item modify entity @s hotbar.6 pudge:lore/goat/instrument/goat_call
execute if score @s goatSound matches 6 run item modify entity @s hotbar.6 pudge:lore/goat/instrument/goat_yearn
execute if score @s goatSound matches 7 run item modify entity @s hotbar.6 pudge:lore/goat/instrument/goat_dream