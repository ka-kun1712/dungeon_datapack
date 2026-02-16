# execute as @a at @s if entity @e[type=armor_stand,tag=heal,distance=..3] run particle heart ^ ^1.7 ^ 0.1 0 0.1 3 3
tp @s ~ ~ ~ ~-30 ~
summon marker ^ ^ ^2 {Tags:["stand1"]}
execute as @e[type=!player,type=!item,type=!armor_stand] at @s if entity @e[type=marker, tag= stand1,distance=..2] run damage @s 3 generic_kill
execute as @e[type=!player,type=!item,type=!armor_stand] at @s if entity @e[type=marker, tag= stand1,distance=..2] run effect give @s slowness 1 3
stopsound @s master entity.generic.explode
playsound minecraft:entity.generic.explode master @a ~ ~ ~ 0.5 1 0
# execute as @a at @s if entity @e[type=armor_stand,tag=heal,distance=..3] run effect give @s instant_health 1 0
data merge entity @s {Invulnerable:true,NoBasePlate:true,NoGravity:true,ShowArms:true,Pose:{LeftLeg:[23f,333f,0f],RightLeg:[23f,28f,6f],LeftArm:[267f,333f,0f],RightArm:[267f,333f,6f]},equipment:{head:{id:"player_head",count:1,components:{profile:{name:"ka_kun1712"}}},chest:{id:"iron_chestplate",count:1},legs:{id:"iron_leggings",count:1},feet:{id:"iron_boots",count:1}}}
particle explosion ^ ^1 ^2 0.5 0.5 0.5 0.6 1
kill @e[type=marker,tag=stand1,distance=..3]