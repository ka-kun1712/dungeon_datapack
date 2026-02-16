scoreboard players remove @s duration 1
execute as @s[scores={duration=..39,duration=29..},tag=stand] at @s run particle reverse_portal ~ ~0.5 ~ 0 1 0 0.5 10
execute as @s[scores={duration=25..},tag=stand] at @s run function dun:item/stand/stand_tp2
execute as @s[scores={duration=25},tag=stand] at @s run tp @s ^ ^ ^1.5 ~15 ~
execute as @s[scores={duration=..20},tag=stand] at @s run function dun:item/stand/stand_tp
execute as @s[scores={duration=20},tag=stand] at @s run function dun:item/stand/stand_p1
execute as @s[scores={duration=19},tag=stand] at @s run function dun:item/stand/stand_p2
execute as @s[scores={duration=18},tag=stand] at @s run function dun:item/stand/stand_p1
execute as @s[scores={duration=17},tag=stand] at @s run function dun:item/stand/stand_p2
execute as @s[scores={duration=16},tag=stand] at @s run function dun:item/stand/stand_p1
execute as @s[scores={duration=15},tag=stand] at @s run function dun:item/stand/stand_p2
execute as @s[scores={duration=14},tag=stand] at @s run function dun:item/stand/stand_p1
execute as @s[scores={duration=13},tag=stand] at @s run function dun:item/stand/stand_p2
execute as @s[scores={duration=12},tag=stand] at @s run function dun:item/stand/stand_p1
execute as @s[scores={duration=11},tag=stand] at @s run function dun:item/stand/stand_p2
execute as @s[scores={duration=10},tag=stand] at @s run function dun:item/stand/stand_p1
execute as @s[scores={duration=9},tag=stand] at @s run function dun:item/stand/stand_p2
execute as @s[scores={duration=8},tag=stand] at @s run function dun:item/stand/stand_p1
execute as @s[scores={duration=7},tag=stand] at @s run function dun:item/stand/stand_p2
execute as @s[scores={duration=6},tag=stand] at @s run function dun:item/stand/stand_p1
execute as @s[scores={duration=5},tag=stand] at @s run function dun:item/stand/stand_p2
execute as @s[scores={duration=4},tag=stand] at @s run function dun:item/stand/stand_p1
execute as @s[scores={duration=3},tag=stand] at @s run function dun:item/stand/stand_p2
execute as @s[scores={duration=2},tag=stand] at @s run function dun:item/stand/stand_p1
execute as @s[scores={duration=1},tag=stand] at @s run function dun:item/stand/stand_p2
execute as @s[scores={duration=0},tag=stand] at @s run function dun:item/stand/stand_p1
execute as @s[scores={duration=-1},tag=stand] at @s run function dun:item/stand/stand_p2
execute as @s[scores={duration=-2},tag=stand] at @s run function dun:item/stand/stand_p1
execute as @s[scores={duration=-3},tag=stand] at @s run function dun:item/stand/stand_p2
execute as @s[scores={duration=-4},tag=stand] at @s run function dun:item/stand/stand_p1
execute as @s[scores={duration=-5},tag=stand] at @s run function dun:item/stand/stand_p2
execute as @s[scores={duration=-6},tag=stand] at @s run function dun:item/stand/stand_p1
execute as @s[scores={duration=-7},tag=stand] at @s run function dun:item/stand/stand_p2
execute as @s[scores={duration=-8},tag=stand] at @s run function dun:item/stand/stand_p1
execute as @s[scores={duration=-9},tag=stand] at @s run function dun:item/stand/stand_p2
execute as @s[scores={duration=-10},tag=stand] at @s run function dun:item/stand/stand_p1
execute as @s[scores={duration=-11},tag=stand] at @s run function dun:item/stand/stand_p2
execute as @s[scores={duration=-12},tag=stand] at @s run function dun:item/stand/stand_p1
execute as @s[scores={duration=-13},tag=stand] at @s run function dun:item/stand/stand_p2
execute as @s[scores={duration=-14},tag=stand] at @s run function dun:item/stand/stand_p1
execute as @s[scores={duration=-15},tag=stand] at @s run function dun:item/stand/stand_p2
execute as @s[scores={duration=-16},tag=stand] at @s run function dun:item/stand/stand_p1
execute as @s[scores={duration=-17},tag=stand] at @s run function dun:item/stand/stand_p2
execute as @s[scores={duration=-18},tag=stand] at @s run function dun:item/stand/stand_p1
execute as @s[scores={duration=-19},tag=stand] at @s run function dun:item/stand/stand_p2
execute as @s[scores={duration=-20},tag=stand] at @s run data merge entity @e[tag=stand,type=armor_stand,limit=1] {Invulnerable:true,NoBasePlate:true,NoGravity:true,ShowArms:true,Pose:{Body:[355f,0f,0f],Head:[0f,327f,0f],LeftLeg:[12f,0f,6f],RightLeg:[12f,0f,354f],LeftArm:[267f,327f,0f],RightArm:[18f,0f,11f]},equipment:{head:{id:"player_head",count:1,components:{profile:{name:"ka_kun1712"}}},chest:{id:"iron_chestplate",count:1},legs:{id:"iron_leggings",count:1},feet:{id:"iron_boots",count:1}}}
execute as @s[scores={duration=-20},tag=stand] at @s run tp @s ^ ^ ^ ~100 ~
execute as @s[scores={duration=-34},tag=stand] at @s run particle reverse_portal ~ ~0.5 ~ 0 0 0 3 50
execute as @s[scores={duration=-34},tag=stand] at @s run playsound minecraft:entity.enderman.teleport master @a ^ ^ ^ 0.5 1 0
kill @s[scores={duration=..-35}]

