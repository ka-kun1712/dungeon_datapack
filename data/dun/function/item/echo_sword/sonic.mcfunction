scoreboard players remove @s duration 1
execute as @e[type=!player,type=!item,type=!armor_stand] at @s if entity @e[type=armor_stand,tag=sonic,distance=..3] run damage @s 500
execute as @e[type=!player,type=!item,type=!armor_stand,team=boss] at @s if entity @e[type=armor_stand,tag=sonic,distance=..5] run damage @s 500
particle sonic_boom ^ ^ ^1 ~ ~ ~ 0 0
kill @s[scores={duration=..0}]
tp @s ^ ^ ^3
