execute if score $Soundtrack music matches 1 run setblock 204 65 -66 dark_oak_wall_sign[facing=south]{front_text:{has_glowing_text:true,color:"gray",messages:['{"clickEvent":{"action":"run_command","value": "trigger lobbysigns set 1105"},"text": ""}', '{"text":"Soundtrack","color":"light_purple"}', '{"text":"Classic","color":"red"}', '{"translate":"Not Detected","color":"dark_red"}']}}
execute if score $Soundtrack music matches 0 run setblock 204 65 -66 dark_oak_wall_sign[facing=south]{front_text:{has_glowing_text:true,color:"gray",messages:['{"clickEvent":{"action":"run_command","value": "trigger lobbysigns set 1105"},"text": ""}', '{"text":"Soundtrack","color":"light_purple"}', '{"text":"Minecraft","color":"green"}', '""']}}
execute if score $Soundtrack music matches 2 run setblock 204 65 -66 dark_oak_wall_sign[facing=south]{front_text:{has_glowing_text:true,color:"gray",messages:['{"clickEvent":{"action":"run_command","value": "trigger lobbysigns set 1105"},"text": ""}', '{"text":"Soundtrack","color":"light_purple"}', '{"text":"Eurobeat","color":"red"}', '{"translate":"Not Detected\\uE012","color":"dark_red"}']}}
execute if score $Soundtrack music matches 3 run setblock 204 65 -66 dark_oak_wall_sign[facing=south]{front_text:{has_glowing_text:true,color:"gray",messages:['{"clickEvent":{"action":"run_command","value": "trigger lobbysigns set 1105"},"text": ""}', '{"text":"Soundtrack","color":"light_purple"}', '{"text":"Disabled","color":"dark_red"}', '""']}}
