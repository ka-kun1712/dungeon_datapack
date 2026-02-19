summon armor_stand ^ ^0.5 ^ {Tags:["sonic"],Invisible:true,Invulnerable:true,Marker:true}
tp @n[type=armor_stand,tag=sonic] ~ ~1 ~ ~ ~
scoreboard players set @n[type=armor_stand,tag=sonic] duration 30

playsound entity.warden.sonic_boom master @s ^ ^ ^1.5 3 1
scoreboard players set @s sonic_charge -10
attribute @s jump_strength base reset
attribute @s movement_speed base reset
