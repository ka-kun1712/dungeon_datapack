summon armor_stand ^ ^0.5 ^ {Tags:["ice"],Invisible:true,Invulnerable:true,Marker:true}
playsound entity.player.attack.sweep master @p ^ ^ ^1.5 1 1 0
playsound entity.breeze.idle_ground master @p ^ ^ ^1.5 3 1.6 0
tp @n[type=armor_stand,tag=ice] ^ ^ ^2 ~ ~
scoreboard players set @n[type=armor_stand,tag=ice] duration 10
# scoreboard players set @s sonic_charg -10
