execute as @e[type=armor_stand,tag=ice] at @s run function dun:item/ice_sword/ice
execute as @e[type=armor_stand,tag=summon_ice] at @s run tp @n[type=!armor_stand,type=!player,distance=..2] ~ ~1.5 ~
execute as @e[type=armor_stand,tag=summon_ice] at @s run tp @n[type=!armor_stand,type=!player,distance=..3,team=boss] ~ ~1.5 ~
