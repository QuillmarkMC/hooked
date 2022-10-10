setblock 200 63 -66 oak_wall_sign[facing=south]{GlowingText:true,Text1:'{"clickEvent":{"action":"run_command","value": "trigger lobbysigns set 5"},"text": ""}',Text2:'{"text":"Go to page","color":"dark_green"}',Text3:'{"text":"General","color":"white"}',Text4:""}
execute if score $Page lobbysigns matches 1 positioned 200 63 -66 run function pudge:lobby/settings/display/data/color/green
execute unless score $Page lobbysigns matches 1 positioned 200 63 -66 run function pudge:lobby/settings/display/data/color/red

