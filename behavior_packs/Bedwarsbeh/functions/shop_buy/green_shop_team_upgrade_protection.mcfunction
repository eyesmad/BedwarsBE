execute @s[scores={"分队"=4},lm=300] ~~~ tag @s add want_upgrade_protection_green
execute @s[scores={"分队"=4},l=299] ~~~ tellraw @s { "rawtext" : [ { "text" : "text.tellraw.ingameinfo.purchase_item_denied" } ] }
execute @s[scores={"分队"=4},l=299] ~~~ playsound mob.endermen.portal @s
execute @e[type=armor_stand,name=main,scores={gameSTART=1,"绿保护等级"=..2}] ~~~ execute @a[tag=want_upgrade_protection_green] ~~~ tag @s add upgrade_green_protection
execute @a[tag=upgrade_green_protection] ~~~ tellraw @s { "rawtext" : [ { "text" : "§d§lYou upgraded the §r§6team PROTECTION" } ] }
execute @a[tag=upgrade_green_protection] ~~~ tellraw @a[scores={"分队"=4}] { "rawtext" : [ { "text" : "§Shop · team upgrade >> §e " } ,{ "selector" :  "@a[tag=want_upgrade_protection_green]"},{ "text" : "§f§l upgraded the team PROTECTION" }] }
execute @a[tag=upgrade_green_protection] ~~~ playsound note.pling @s ~~~
execute @a[tag=upgrade_green_protection] ~~~ xp -300L @s
execute @a[tag=upgrade_green_protection] ~~~ scoreboard players add @e[type=armor_stand,scores={gameSTART=1},name=main] "绿保护等级" 1
execute @a[tag=upgrade_green_protection] ~~~ function team_upgrade_PROTECTIONandSHARPNESS
tag @a remove want_upgrade_protection_green
tag @a remove upgrade_green_protection