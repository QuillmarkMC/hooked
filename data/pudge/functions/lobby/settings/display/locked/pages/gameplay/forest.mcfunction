setblock 202 64 -66 dark_oak_wall_sign[facing=south]{GlowingText:true,Text1:'{"clickEvent":{"action":"run_command","value": "trigger lobbysigns set 1207"},"text": ""}',Text2:'{"text":"Forest","color":"white"}',Text3:'',Text4:""}
execute if score $LoadMap var matches 1 positioned 202 64 -66 run function pudge:lobby/settings/display/data/color/green
execute unless score $LoadMap var matches 1 positioned 202 64 -66 run function pudge:lobby/settings/display/data/color/red
