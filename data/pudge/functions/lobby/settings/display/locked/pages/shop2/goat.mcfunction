setblock 201 64 -66 dark_oak_wall_sign[facing=south]{GlowingText:true,Color:"gray",Text1:'{"text":"The Lion Horn","color":"#A335EE","clickEvent":{"action":"run_command","value": "trigger lobbysigns set 1405"},"bold": true}',Text2:'{"text":"of Stormwind","color":"#A335EE","bold": true}',Text3:'{"score":{"name":"$GoatCost","objective":"shop"},"color":"red"}',Text4:'{"text":"gold","color":"gold"}'}

execute if score $GoatCost shop = $GoatCost.Default shop run data merge block 201 64 -66 {Text3:'{"score":{"name":"$GoatCost","objective":"shop"},"color":"green"}'}
