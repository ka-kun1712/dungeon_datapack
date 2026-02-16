playsound minecraft:entity.enderman.teleport master @a ^ ^ ^ 0.5 0.8 0
# summon armor_stand ^ ^ ^-1 {Tags:["stand"],Invisible:false,NoGravity:true}
# summon armor_stand ^ ^ ^-1 {Tags:["stand"],Invulnerable:true,NoBasePlate:true,NoGravity:true,ShowArms:true,Pose:{Body:[0f,0f,6f],LeftLeg:[0f,0f,11f],RightLeg:[0f,0f,349f],LeftArm:[0f,0f,11f],RightArm:[0f,0f,17f]},equipment:{head:{id:"player_head",count:1,components:{profile:{name:"ka_kun1712"}}},chest:{id:"iron_chestplate",count:1},legs:{id:"iron_leggings",count:1},feet:{id:"iron_boots",count:1}}}
summon armor_stand ^ ^-1 ^ {Tags:["stand"],Invulnerable:true,DisabledSlots:63,NoBasePlate:true,NoGravity:true,ShowArms:true,Pose:{LeftLeg:[0f,0f,6f],RightLeg:[0f,0f,354f],LeftArm:[0f,0f,321f],RightArm:[0f,0f,39f]},equipment:{head:{id:"player_head",count:1,components:{profile:{name:"ka_kun1712"}}},chest:{id:"iron_chestplate",count:1,components:{"trim":{material:"minecraft:diamond",pattern:"minecraft:silence"}}},legs:{id:"iron_leggings",count:1,components:{"trim":{material:"minecraft:diamond",pattern:"minecraft:silence"}}},feet:{id:"iron_boots",count:1,components:{"trim":{material:"minecraft:diamond",pattern:"minecraft:silence"}}}}}
tp @n[type=armor_stand,tag=stand] ^ ^ ^-1 ~ ~
item replace entity @e[tag= stand,type= armor_stand] armor.head with player_head[profile="ka_kun1712"]
tp @n[type=armor_stand,tag=stand] ^-0.5 ^0.2 ^-0.5 ~ ~
item replace entity @e[tag=stand,type=armor_stand] armor.chest with minecraft:iron_chestplate[trim={material:"minecraft:diamond",pattern:"minecraft:silence"}]
item replace entity @e[tag=stand,type=armor_stand] armor.legs with minecraft:iron_leggings[trim={material:"minecraft:diamond",pattern:"minecraft:silence"}]
item replace entity @e[tag=stand,type=armor_stand] armor.feet with minecraft:iron_boots[trim={material:"minecraft:diamond",pattern:"minecraft:silence"}]
scoreboard players set @n[type=armor_stand,tag=stand] duration 40
