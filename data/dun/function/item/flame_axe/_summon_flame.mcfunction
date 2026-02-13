playsound item.mace.smash_ground master @a ^ ^1 ^1 2 1 0
playsound entity.iron_golem.damage master @a ^ ^1 ^1 2 1 0
summon armor_stand ^ ^2 ^2 {Tags:["flame"],Invisible: true,attributes:[{id: "gravity",base:100000}]}
execute as @e[type=!player,type=!item,type=!armor_stand] at @s if entity @e[type=armor_stand, tag= flame,distance=..4] run damage @s 10
particle block{block_state:deepslate} ~ ~ ~ 1 1 1 1 100
particle soul_fire_flame ~ ~ ~ 2 1 2 1 300
tp @n[type=armor_stand,tag=flame] ^ ^2 ^3 ~ ~
scoreboard players set @n[type=armor_stand,tag=flame] duration 40


