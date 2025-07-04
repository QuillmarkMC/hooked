setblock 202 64 -66 dark_oak_wall_sign[facing=south]{front_text:{has_glowing_text:true,color:"gray",messages:[{"click_event":{"action":"run_command","command": "/trigger lobbysigns set 1207"},"text": ""}, {"text":"Forest","color":"white"}, {"text":""}, {"text":""}]}}
execute if score $LoadMap var matches 1 positioned 202 64 -66 run function pudge:lobby/settings/display/data/color/green
execute unless score $LoadMap var matches 1 positioned 202 64 -66 run function pudge:lobby/settings/display/data/color/red
