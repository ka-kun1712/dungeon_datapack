scoreboard players set @a d_f 0
execute as @a if items entity @s armor.head minecraft:diamond_helmet[trim={material:"minecraft:gold",pattern:"minecraft:coast"}] run scoreboard players add @s d_f 1
execute as @a if items entity @s armor.chest minecraft:diamond_chestplate[trim={material:"minecraft:gold",pattern:"minecraft:snout"}] run scoreboard players add @s d_f 1
execute as @a if items entity @s armor.legs minecraft:diamond_leggings[trim={material:"minecraft:gold",pattern:"minecraft:snout"}] run scoreboard players add @s d_f 1
execute as @a if items entity @s armor.feet minecraft:diamond_boots[trim={material:"minecraft:gold",pattern:"minecraft:snout"}] run scoreboard players add @s d_f 1
execute as @a[scores={d_f=3..}] run effect give @s fire_resistance 1 1