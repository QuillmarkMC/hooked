say TODO: lock settings
#scoreboard players set $Locked lobbysigns 1
tellraw @s [{"text": ""},{"text": "[!] ","color": "blue","bold": true},{"text":"Settings have been locked! Only admins can modify or unlock settings."}]
#playsound