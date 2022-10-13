setblock 202 65 -66 oak_wall_sign[facing=south]{GlowingText:true,Color:"gray",Text1:'{"text":"Grappling","color":"#9871FF","clickEvent":{"action":"run_command","value": "trigger lobbysigns set 403"},"bold": true}',Text2:'{"text":"Hook","color":"#9871FF","bold": true}',Text3:'{"score":{"name":"$GrappleCost","objective":"shop"},"color":"red"}',Text4:'{"text":"gold","color":"gold"}'}

execute if score $GrappleCost shop = $GrappleCost.Default shop run data merge block 202 65 -66 {Text3:'{"score":{"name":"$GrappleCost","objective":"shop"},"color":"green"}'}
