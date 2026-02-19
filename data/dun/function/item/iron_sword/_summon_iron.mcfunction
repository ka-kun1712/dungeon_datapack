summon armor_stand ^ ^0.5 ^ {Tags:["iron"],Invisible:true,NoGravity:true,Invulnerable:true}
playsound entity.player.attack.sweep master @p ^ ^ ^1.5 1 0.3 0
playsound entity.warden.attack_impact master @p ^ ^ ^1.5 1 0.5 0
# playsound entity.player.attack.crit master @p ^ ^ ^1.5 1 1 0
tp @n[type=armor_stand,tag=iron] ^ ^1 ^2 ~ ~
scoreboard players set @n[type=armor_stand,tag=iron] duration 2
# scoreboard players set @s sonic_charge -10
attribute @s jump_strength base reset
attribute @s movement_speed base reset
