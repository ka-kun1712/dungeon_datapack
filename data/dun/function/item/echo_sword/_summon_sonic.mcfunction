summon armor_stand ^ ^0.5 ^ {Tags:["sonic"],Invisible:true}
playsound entity.warden.sonic_boom hostile @p ^ ^ ^1.5 3 1 0
tp @n[type=armor_stand,tag=sonic] ~ ~1 ~ ~ ~
scoreboard players set @n[type=armor_stand,tag=sonic] duration 30
scoreboard players set @s sonic_charg -10
attribute @s jump_strength base reset
attribute @s movement_speed base reset