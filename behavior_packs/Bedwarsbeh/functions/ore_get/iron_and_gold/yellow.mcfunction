scoreboard players operation @s own_xp += @e[type=armor_stand,name=spawn.yellow_iron,scores={Y_iron_count=1..}] Y_iron_count
scoreboard players operation @s own_xp += @e[type=armor_stand,name=spawn.yellow_gold,scores={Y_gold_count=7..}] Y_gold_count
execute @e[type=bedwars:iron_point_yellow_invisible,tag=iron_point_yellow] ~~~ kill @e[type=item,name=Iron,r=2]
execute @e[type=bedwars:iron_point_yellow_invisible,tag=iron_point_yellow] ~~~ kill @e[type=item,name=Gold,r=2]
scoreboard players set @e[type=armor_stand,name=spawn.yellow_iron] Y_iron_count 0
scoreboard players set @e[type=armor_stand,name=spawn.yellow_iron] Y_spawned_iron 0
scoreboard players set @e[type=armor_stand,name=spawn.yellow_gold] Y_gold_count 0
scoreboard players set @e[type=armor_stand,name=spawn.yellow_gold] Y_spawned_gold 0