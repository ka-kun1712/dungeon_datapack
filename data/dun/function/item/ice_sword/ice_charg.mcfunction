execute as @e[scores={ice=-10..}] at @s run scoreboard players remove @s ice 1
execute as @e[scores={ice=10..},tag=summon_ice] at @s run item replace entity @s armor.head with ice
execute as @e[scores={ice=79},tag=summon_ice] at @s run playsound entity.skeleton.converted_to_stray master @a ~ ~2 ~ 2 1 0
execute as @e[scores={ice=70},tag=summon_ice] at @s run stopsound @a master entity.skeleton.converted_to_stray
execute as @e[type=!player,type=!item,type=!armor_stand] at @s if entity @e[type=armor_stand,tag=summon_ice,distance=..2] run damage @s 5
execute as @e[type=!player,type=!item,type=!armor_stand,tag=boss] at @s if entity @e[type=armor_stand,tag=summon_ice,distance=..3] run damage @s 2
# execute as @e[scores={ice=79},tag=summon_ice] at @s run fill ~ ~ ~ ~ ~ ~ frosted_ice[age=0] replace air
# execute as @e[scores={ice=44},tag=summon_ice] at @s run fill ~ ~ ~ ~ ~ ~ frosted_ice[age=1] replace frosted_ice[age=0]
# execute as @e[scores={ice=29},tag=summon_ice] at @s run fill ~ ~ ~ ~ ~ ~ frosted_ice[age=2] replace frosted_ice[age=1]
# execute as @e[scores={ice=0},tag=summon_ice] at @s run fill ~ ~ ~ ~ ~ ~ air replace frosted_ice
execute as @e[scores={ice=..-10}] at @s run scoreboard players set @s ice -10
execute as @e[scores={ice=0},tag=summon_ice] at @s run playsound block.glass.break master @a ~ ~2 ~ 2 1 0
execute as @e[scores={ice=-1},tag=summon_ice] at @s run kill @s
# execute as @e[tag=summon_ice,type=armor_stand] at @s if entity @n[type=!armor_stand,type=!player,type=!item,distance=3..] at @s run scoreboard players set @s ice 1
# execute as @a[scores={ice=-10}] at @s run effect clear @s darkness
