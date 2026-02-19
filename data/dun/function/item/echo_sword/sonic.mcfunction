scoreboard players remove @s duration 1
kill @s[scores={duration=..0}]

execute as @e[type=!#dun:ignore_damage] at @s if entity @e[type=armor_stand,tag=sonic,distance=..3] run damage @s 500 magic by @s
execute as @e[type=!#dun:ignore_damage] at @s if entity @e[type=armor_stand,tag=sonic,distance=..5] run damage @s 500 magic by @s
particle sonic_boom ^ ^ ^1 ~ ~ ~ 0 0
tp @s ^ ^ ^3
