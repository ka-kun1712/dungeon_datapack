scoreboard players remove @s duration 1
execute as @e[type=!#dun:ignore_damage] at @s if entity @e[type=armor_stand, tag= flame,distance=..3] run damage @s 10 on_fire by @s
execute as @e[type=!#dun:ignore_damage] at @s if entity @e[type=armor_stand, tag= flame,distance=..3] run data merge entity @s {Fire:100s}
# execute as @e[type=armor_stand, tag= flame] run particle lava ~ ~ ~ 0 0 0 0 2
execute as @s[scores={duration=30},tag=flame] at @s run function dun:item/flame_axe/flame_particle
execute as @s[scores={duration=25},tag=flame] at @s run function dun:item/flame_axe/flame_particle
execute as @s[scores={duration=20},tag=flame] at @s run function dun:item/flame_axe/flame_particle
execute as @s[scores={duration=15},tag=flame] at @s run function dun:item/flame_axe/flame_particle
execute as @s[scores={duration=10},tag=flame] at @s run function dun:item/flame_axe/flame_particle
execute as @s[scores={duration=5},tag=flame] at @s run function dun:item/flame_axe/flame_particle
kill @s[scores={duration=..0}]
