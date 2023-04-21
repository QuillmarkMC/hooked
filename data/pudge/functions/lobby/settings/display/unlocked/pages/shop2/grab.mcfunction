setblock 203 64 -66 oak_wall_sign[facing=south]{GlowingText:true,Color:"gray",Text1:'{"text":"Anchor Arms","color":"#ccca99","clickEvent":{"action":"run_command","value": "trigger lobbysigns set 407"},"bold": true}',Text2:'',Text3:'{"score":{"name":"$GrabCost","objective":"shop"},"color":"red"}',Text4:'{"text":"gold","color":"gold"}'}

execute if score $GrabCost shop = $GrabCost.Default shop run data merge block 203 64 -66 {Text3:'{"score":{"name":"$GrabCost","objective":"shop"},"color":"green"}'}
