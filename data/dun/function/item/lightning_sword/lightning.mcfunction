scoreboard players remove @s duration 1
execute as @e[type=!#dun:ignore_damage] at @s if entity @e[type=armor_stand,tag=lightning,distance=..2] run damage @s 30
# execute as @e[type=!#dun:ignore_damage] at @s if entity @n[type=armor_stand, tag= lightning,distance=..2] run setblock ~ ~ ~ ice keep
# execute as @e[type=!#dun:ignore_damage] at @s if entity @n[type=armor_stand, tag= lightning,distance=..2] run setblock ~ ~1 ~ ice keep
execute as @e[type=armor_stand,tag=lightning] run summon lightning_bolt ^ ^ ^5
kill @s[scores={duration=..0}]
tp @s ^ ^ ^3
