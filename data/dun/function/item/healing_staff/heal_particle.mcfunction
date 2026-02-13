execute as @a at @s if entity @e[type=armor_stand, tag= heal,distance=..3] run particle heart ^ ^1.7 ^ 0.1 0 0.1 3 3
playsound entity.experience_orb.pickup master @a ~ ~ ~ 2 1 0
execute as @a at @s if entity @e[type=armor_stand, tag= heal,distance=..3] run effect give @s instant_health 1 0
