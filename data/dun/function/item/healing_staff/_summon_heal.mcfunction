playsound entity.player.levelup master @a ^ ^ ^ 2 1 0
summon armor_stand ^ ^ ^ {Tags:["heal"],Invisible: true,NoGravity: true}
tp @n[type=armor_stand,tag=heal] ~ ~ ~
scoreboard players set @n[type=armor_stand,tag=heal] duration 120


