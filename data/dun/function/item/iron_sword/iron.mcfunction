scoreboard players remove @s duration 1
execute as @e[type=!player,type=!item,type=!armor_stand] at @s if entity @e[type=armor_stand, tag= iron,distance=..5] run damage @s 10
# execute as @e[type=!player,type=!item,type=!armor_stand] at @s if entity @n[type=armor_stand, tag= iron,distance=..2] run setblock ~ ~ ~ iron keep
# execute as @e[type=!player,type=!item,type=!armor_stand] at @s if entity @n[type=armor_stand, tag= iron,distance=..2] run setblock ~ ~1 ~ iron keep
# execute as @e[tag= iron,scores={duration=..10, duration=7..}] at @s run tp @s ^ ^ ^1
# execute as @e[tag= iron,scores={duration=..7,duration=4..}] at @s run tp @s ^ ^ ^1
# execute as @e[tag= iron,scores={duration=..4}] at @s run tp @s ^ ^ ^1
particle minecraft:sweep_attack ^2 ^ ^2 0 0 0 3 5
particle minecraft:sweep_attack ^-2 ^ ^2 0 0 0 3 5
particle minecraft:sweep_attack ^4 ^ ^1 0 0 0 3 5
particle minecraft:sweep_attack ^-4 ^ ^1 0 0 0 3 5
particle minecraft:sweep_attack ^ ^ ^2 0 0 0 3 5
kill @s[scores={duration=..0}]
