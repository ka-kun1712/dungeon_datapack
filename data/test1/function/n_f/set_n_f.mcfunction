scoreboard players set @a n_f 0
execute as @a if items entity @s armor.head minecraft:netherite_helmet[trim={material:"minecraft:gold",pattern:"minecraft:silence"}] run scoreboard players add @s n_f 1
execute as @a if items entity @s armor.chest minecraft:netherite_chestplate[trim={material:"minecraft:gold",pattern:"minecraft:silence"}] run scoreboard players add @s n_f 1
execute as @a if items entity @s armor.legs minecraft:netherite_leggings[trim={material:"minecraft:gold",pattern:"minecraft:silence"}] run scoreboard players add @s n_f 1
execute as @a if items entity @s armor.feet minecraft:netherite_boots[trim={material:"minecraft:gold",pattern:"minecraft:silence"}] run scoreboard players add @s n_f 1
execute as @a[scores={n_f=3..}] run effect give @s fire_resistance 1 1