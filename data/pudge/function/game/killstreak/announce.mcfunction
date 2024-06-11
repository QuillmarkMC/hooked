#after determining killstreak and combos, global announce kill
#double kill
execute if score $Temp killstreak matches 1 run tellraw @a [{"text": "[!] ","color": "yellow","bold": true},{"text":"","extra":[{"selector":"@s"}],"bold": false},{"text": " just killed ","color": "white","bold": false},{"text":"","extra":[{"selector":"@a[tag=tempReceiverTag,limit=1]"}],"bold": false},{"text": " for a double kill!","color": "white","bold": false}]
execute if score $Temp killstreak matches 1 as @a[scores={announcer=1}] at @s run playsound pudge:game.double_kill ambient @s ~ ~ ~
execute if score $Temp killstreak matches 1 as @a[scores={announcer=2}] at @s run playsound pudge:game.double_kill.redmage ambient @s ~ ~ ~

#triple kill
execute if score $Temp killstreak matches 2 run tellraw @a [{"text": "[!] ","color": "yellow","bold": true},{"text":"","extra":[{"selector":"@s"}],"bold": false},{"text": " just killed ","color": "white","bold": false},{"text":"","extra":[{"selector":"@a[tag=tempReceiverTag,limit=1]"}],"bold": false},{"text": " for a triple kill!","color": "white","bold": false}]
execute if score $Temp killstreak matches 2 as @a[scores={announcer=1}] at @s run playsound pudge:game.triple_kill ambient @s ~ ~ ~
execute if score $Temp killstreak matches 2 as @a[scores={announcer=2}] at @s run playsound pudge:game.triple_kill.redmage ambient @s ~ ~ ~

#ultra kill
execute if score $Temp killstreak matches 3 run tellraw @a [{"text": "[!] ","color": "yellow","bold": true},{"text":"","extra":[{"selector":"@s"}],"bold": false},{"text": " just killed ","color": "white","bold": false},{"text":"","extra":[{"selector":"@a[tag=tempReceiverTag,limit=1]"}],"bold": false},{"text": " for an ultra kill!","color": "white","bold": false}]
execute if score $Temp killstreak matches 3 as @a[scores={announcer=1}] at @s run playsound pudge:game.ultrakill ambient @s ~ ~ ~
execute if score $Temp killstreak matches 3 as @a[scores={announcer=2}] at @s run playsound pudge:game.ultrakill.redmage ambient @s ~ ~ ~

#rampage
execute if score $Temp killstreak matches 4 run tellraw @a [{"text": "[!] ","color": "yellow","bold": true},{"text":"","extra":[{"selector":"@s"}],"bold": false},{"text": " is on a rampage!","color": "white","bold": false}]
execute if score $Temp killstreak matches 4 as @a[scores={announcer=1}] at @s run playsound pudge:game.rampage ambient @s ~ ~ ~
execute if score $Temp killstreak matches 4 as @a[scores={announcer=2}] at @s run playsound pudge:game.rampage.redmage ambient @s ~ ~ ~

#combo whore
execute if score $Temp killstreak matches 5 run tellraw @a [{"text": "[!] ","color": "yellow","bold": true},{"text":"","extra":[{"selector":"@s"}],"bold": false},{"text": " is a combo whore!","color": "white","bold": false}]
execute if score $Temp killstreak matches 5 as @a[scores={announcer=1}] at @s run playsound pudge:game.combowhore ambient @s ~ ~ ~
execute if score $Temp killstreak matches 5 as @a[scores={announcer=2}] at @s run playsound pudge:game.combowhore.redmage ambient @s ~ ~ ~

#killing spree
execute if score $Temp killstreak matches 10 run tellraw @a [{"text": "[!] ","color": "yellow","bold": true},{"text":"","extra":[{"selector":"@s"}],"bold": false},{"text": " just killed ","color": "white","bold": false},{"text":"","extra":[{"selector":"@a[tag=tempReceiverTag,limit=1]"}],"bold": false},{"text": " to start a killing spree!","color": "white","bold": false}]
execute if score $Temp killstreak matches 10 as @a[scores={announcer=1}] at @s run playsound pudge:game.killing_spree ambient @s ~ ~ ~
execute if score $Temp killstreak matches 10 as @a[scores={announcer=2}] at @s run playsound pudge:game.killing_spree.redmage ambient @s ~ ~ ~

#dominating
execute if score $Temp killstreak matches 11 run tellraw @a [{"text": "[!] ","color": "yellow","bold": true},{"text":"","extra":[{"selector":"@s"}],"bold": false},{"text": " is dominating!","color": "white","bold": false}]
execute if score $Temp killstreak matches 11 as @a[scores={announcer=1}] at @s run playsound pudge:game.dominating ambient @s ~ ~ ~
execute if score $Temp killstreak matches 11 as @a[scores={announcer=2}] at @s run playsound pudge:game.dominating.redmage ambient @s ~ ~ ~

#mega kill
execute if score $Temp killstreak matches 12 run tellraw @a [{"text": "[!] ","color": "yellow","bold": true},{"text":"","extra":[{"selector":"@s"}],"bold": false},{"text": " just killed ","color": "white","bold": false},{"text":"","extra":[{"selector":"@a[tag=tempReceiverTag,limit=1]"}],"bold": false},{"text": " for a mega kill!","color": "white","bold": false}]
execute if score $Temp killstreak matches 12 as @a[scores={announcer=1}] at @s run playsound pudge:game.megakill ambient @s ~ ~ ~
execute if score $Temp killstreak matches 12 as @a[scores={announcer=2}] at @s run playsound pudge:game.megakill.redmage ambient @s ~ ~ ~

#unstoppable
execute if score $Temp killstreak matches 13 run tellraw @a [{"text": "[!] ","color": "yellow","bold": true},{"text":"","extra":[{"selector":"@s"}],"bold": false},{"text": " is unstoppable!","color": "white","bold": false}]
execute if score $Temp killstreak matches 13 as @a[scores={announcer=1}] at @s run playsound pudge:game.unstoppable ambient @s ~ ~ ~
execute if score $Temp killstreak matches 13 as @a[scores={announcer=2}] at @s run playsound pudge:game.unstoppable.redmage ambient @s ~ ~ ~

#wicked sick
execute if score $Temp killstreak matches 14 run tellraw @a [{"text": "[!] ","color": "yellow","bold": true},{"text":"","extra":[{"selector":"@s"}],"bold": false},{"text": " is wicked sick!","color": "white","bold": false}]
execute if score $Temp killstreak matches 14 as @a[scores={announcer=1}] at @s run playsound pudge:game.whickedsick ambient @s ~ ~ ~
execute if score $Temp killstreak matches 14 as @a[scores={announcer=2}] at @s run playsound pudge:game.whickedsick.redmage ambient @s ~ ~ ~

#monster kill
execute if score $Temp killstreak matches 15 run tellraw @a [{"text": "[!] ","color": "yellow","bold": true},{"text":"","extra":[{"selector":"@s"}],"bold": false},{"text": " just killed ","color": "white","bold": false},{"text":"","extra":[{"selector":"@a[tag=tempReceiverTag,limit=1]"}],"bold": false},{"text": " for a monster kill!","color": "white","bold": false}]
execute if score $Temp killstreak matches 15 as @a[scores={announcer=1}] at @s run playsound pudge:game.monster_kill ambient @s ~ ~ ~
execute if score $Temp killstreak matches 15 as @a[scores={announcer=2}] at @s run playsound pudge:game.monster_kill.redmage ambient @s ~ ~ ~

#godlike
execute if score $Temp killstreak matches 16 run tellraw @a [{"text": "[!] ","color": "yellow","bold": true},{"text":"","extra":[{"selector":"@s"}],"bold": false},{"text": " is godlike!","color": "white","bold": false}]
execute if score $Temp killstreak matches 16 as @a[scores={announcer=1}] at @s run playsound pudge:game.godlike ambient @s ~ ~ ~
execute if score $Temp killstreak matches 16 as @a[scores={announcer=2}] at @s run playsound pudge:game.godlike.redmage ambient @s ~ ~ ~

#first blood
execute if score $Temp killstreak matches 100 run tellraw @a [{"text": "[!] ","color": "yellow","bold": true},{"text":"","extra":[{"selector":"@s"}],"bold": false},{"text": " has killed ","color": "white","bold": false},{"text":"","extra":[{"selector":"@a[tag=tempReceiverTag,limit=1]"}],"bold": false},{"text": ", drawing the first blood!","color": "white","bold": false}]
execute if score $Temp killstreak matches 100 as @a[scores={announcer=1}] at @s run playsound pudge:game.firstblood ambient @s ~ ~ ~
execute if score $Temp killstreak matches 100 as @a[scores={announcer=2}] at @s run playsound pudge:game.firstblood.redmage ambient @s ~ ~ ~

#ownage
execute if score $Temp killstreak matches 17 run tellraw @a [{"text": "[!] ","color": "yellow","bold": true},{"text":"","extra":[{"selector":"@s"}],"bold": false},{"text": " just owned ","color": "white","bold": false},{"text":"","extra":[{"selector":"@a[tag=tempReceiverTag,limit=1]"}],"bold": false},{"text": ", ending their kill streak!","color": "white","bold": false}]
execute if score $Temp killstreak matches 17 as @a[scores={announcer=1}] at @s run playsound pudge:game.ownage ambient @s ~ ~ ~
execute if score $Temp killstreak matches 17 as @a[scores={announcer=2}] at @s run playsound pudge:game.ownage.redmage ambient @s ~ ~ ~
