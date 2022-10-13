setblock 202 65 -66 oak_wall_sign[facing=south]{GlowingText:true,Color:"gray",Text1:'{"text":"Income","color":"light_purple","clickEvent":{"action":"run_command","value": "trigger lobbysigns set 203"},"bold": true}',Text2:'{"text":"Amount","color":"light_purple","bold": true}',Text3:'{"score":{"name":"$IncomeAmount","objective":"shop"},"color":"red"}',Text4:'{"text":"gold","color":"gold"}'}

execute if score $IncomeAmount gold = $IncomeAmount lobbysigns.default run data merge block 202 65 -66 {Text3:'{"score":{"name":"$IncomeAmount","objective":"shop"},"color":"green"}'}
