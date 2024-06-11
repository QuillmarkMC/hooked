setblock 202 63 -66 oak_wall_sign[facing=south]{front_text:{has_glowing_text:true,color:"gray",messages:['{"clickEvent":{"action":"run_command","value": "trigger lobbysigns set 7"},"text": ""}', '{"text":"Go to page","color":"dark_gray"}', '{"text":"Shop-1","color":"white"}', '""']}}
execute if score $Page lobbysigns matches 3 positioned 202 63 -66 run data modify block ~ ~ ~ front_text.messages[1] set value '{"text":"Go to page","color":"dark_green"}'
#execute unless score $Page lobbysigns matches 3 positioned 202 63 -66 run function pudge:lobby/settings/display/data/color/white

