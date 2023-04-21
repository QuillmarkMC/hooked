setblock 201 65 -66 oak_wall_sign[facing=south]{GlowingText:true,Color:"gray",Text1:'{"text":"Totem of","color":"#FF8707","clickEvent":{"action":"run_command","value": "trigger lobbysigns set 401"},"bold": true}',Text2:'{"text":"Protection","color":"#FF8707","bold": true}',Text3:'{"score":{"name":"$TotemCost","objective":"shop"},"color":"red"}',Text4:'{"text":"gold","color":"gold"}'}

execute if score $TotemCost shop = $TotemCost.Default shop run data merge block 201 65 -66 {Text3:'{"score":{"name":"$TotemCost","objective":"shop"},"color":"green"}'}
