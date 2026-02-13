execute as @a[scores={sonic_charg=0..}] at @s run scoreboard players remove @a sonic_charg 1
execute as @a[scores={sonic_charg=33}] at @s run effect give @s darkness 3
execute as @a[scores={sonic_charg=10}] at @s run effect give @s blindness 3
execute as @a[scores={sonic_charg=0}] at @s run function dun:item/echo_sword/_summon_sonic
# execute as @a[scores={sonic_charg=-10}] at @s run effect clear @s darkness
execute as @a[scores={sonic_charg=-10}] at @s run effect clear @s blindness
execute as @a[scores={sonic_charg=-10}] at @s run effect clear @s slowness
