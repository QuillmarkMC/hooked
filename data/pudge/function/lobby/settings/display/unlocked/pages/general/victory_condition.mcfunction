#setblock 200 64 -66 oak_wall_sign[facing=south]{GlowingText:true,front_text:{messages:['{"clickEvent":{"action":"run_command","value": "trigger lobbysigns set 100"},"text": ""}', '{"text":"Forest","color":"white"}', '""', '""']}}
execute if score $VictoryType lobbysigns matches 1 run setblock 201 65 -66 oak_wall_sign[facing=south]{front_text:{has_glowing_text:true,color:"gray",messages:['{"clickEvent":{"action":"run_command","value": "trigger lobbysigns set 101"},"text": ""}', '{"text":"Kills to Win","color":"light_purple"}', '{"score":{"name":"$TotalRequiredKills","objective":"var"},"color":"red"}', '""']}}
execute unless score $VictoryType lobbysigns matches 1 run setblock 201 65 -66 oak_wall_sign[facing=south]{front_text:{has_glowing_text:true,color:"gray",messages:['{"clickEvent":{"action":"run_command","value": "trigger lobbysigns set 102"},"text": ""}', '{"text":"Time Limit","color":"light_purple"}', '{"score":{"name":"$TotalTimeMinutes","objective":"var"},"color":"red"}', '{"text":"minutes","color":"gray"}']}}

execute if score $VictoryType lobbysigns matches 1 if score $VictoryKills.State lobbysigns matches 0 run data modify block 201 65 -66 front_text.messages[2] set value '{"text":"Adjusted for","color":"green"}'
execute if score $VictoryType lobbysigns matches 1 if score $VictoryKills.State lobbysigns matches 0 run data modify block 201 65 -66 front_text.messages[3] set value '{"text":"Player Count","color":"green"}'
execute unless score $VictoryType lobbysigns matches 1 if score $TotalTimeMinutes var = $TotalTimeMinutes lobbysigns.default run data modify block 201 65 -66 front_text.messages[2] set value '{"score":{"name":"$TotalTimeMinutes","objective":"var"},"color":"green"}'