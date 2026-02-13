playsound item.mace.smash_ground master @a ^ ^1 ^1 2 1 0
playsound entity.iron_golem.damage master @a ^ ^1 ^1 2 1 0
playsound entity.warden.attack_impact master @p ^ ^1 ^1 1 0.5 0
summon armor_stand ^ ^2 ^2 {Tags:["kusodeka"],Invisible:true,NoGravity:true,Invulnerable:true}
execute as @e[type=!player,type=!item,type=!armor_stand] at @s if entity @e[type=armor_stand,tag=kusodeka,distance=..4] run effect give @s levitation 1 80
execute as @e[type=!player,type=!item,type=!armor_stand] at @s if entity @e[type=armor_stand,tag=kusodeka,distance=..4] run damage @s 100 player_attack by @s
particle explosion_emitter ~ ~ ~ 1 1 1 1 3
particle block{block_state:deepslate} ~ ~ ~ 2 1 2 1 300
tp @n[type=armor_stand,tag=kusodeka] ^ ^2 ^3 ~ ~
scoreboard players set @n[type=armor_stand,tag=kusodeka] duration 40
