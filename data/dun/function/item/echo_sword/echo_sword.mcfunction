playsound entity.warden.sonic_chargee hostile @p ^ ^ ^1 3 0.8
scoreboard players set @s sonic_charge 50
function dun:item/echo_sword/sonic_charge
effect give @s slowness 3 100
attribute @s jump_strength base set 0
