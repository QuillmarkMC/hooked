setblock 204 63 -66 oak_wall_sign[facing=south]{GlowingText:true,Color:"gray",Text1:'{"clickEvent":{"action":"run_command","value": "trigger lobbysigns set 9"},"text": ""}',Text2:'{"text":"Go to page","color":"dark_gray"}',Text3:'{"text":"Credits","color":"white"}',Text4:""}
execute if score $Page lobbysigns matches 5 positioned 204 63 -66 run data merge block ~ ~ ~ {Text2:'{"text":"Go to page","color":"dark_green"}'}
#execute unless score $Page lobbysigns matches 5 positioned 204 63 -66 run function pudge:lobby/settings/display/data/color/white

