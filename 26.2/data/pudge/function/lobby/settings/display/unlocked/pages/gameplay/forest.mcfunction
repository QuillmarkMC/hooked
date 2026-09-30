setblock 202 64 -66 oak_wall_sign[facing=south]{front_text:{has_glowing_text:true,messages:[{"click_event":{"action":"run_command","command": "/trigger lobbysigns set 207"},"text": ""}, {"translate":"text.lobby.settings.signs.gameplay.forest","color":"white"}, {"text":""}, {"text":""}]}}
execute if score $LoadMap var matches 1 positioned 202 64 -66 run function pudge:lobby/settings/display/data/color/green
execute unless score $LoadMap var matches 1 positioned 202 64 -66 run function pudge:lobby/settings/display/data/color/red
