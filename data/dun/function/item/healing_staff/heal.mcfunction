scoreboard players remove @s duration 1
execute as @e[tag=heal] at @s run particle happy_villager ^ ^0.1 ^3 0 0 0 1 2
execute as @e[tag=heal] at @s run particle happy_villager ~ ~ ~ 1 2 1 5 1
# execute as @e[type=armor_stand, tag= heal] run particle lava ~ ~ ~ 0 0 0 0 2
execute as @s[scores={duration=100},tag=heal] at @s run function dun:item/healing_staff/heal_particle
execute as @s[scores={duration=75},tag=heal] at @s run function dun:item/healing_staff/heal_particle
execute as @s[scores={duration=50},tag=heal] at @s run function dun:item/healing_staff/heal_particle
execute as @s[scores={duration=25},tag=heal] at @s run function dun:item/healing_staff/heal_particle
execute as @s[scores={duration=0},tag=heal] at @s run function dun:item/healing_staff/heal_particle
kill @s[scores={duration=..0}]
tp @s ~ ~ ~ ~50 ~
