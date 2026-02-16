summon piglin_brute ~ ~1 ~ { Tags: ["boss3"] }
execute as @e[tag= boss3] at @s run attribute @s scale base set 2
execute as @e[tag= boss3,type=piglin_brute] at @s run attribute @s movement_speed base set 0.4
execute as @e[tag= boss3,type=piglin_brute] at @s run attribute @s max_health base set 100
execute as @e[tag= boss3] at @s run attribute @s attack_knockback base set 2
execute as @e[tag= boss3] at @s run attribute @s attack_speed base set 10
effect give @e[tag=boss3] instant_health 1 100
# item replace entity @e[tag=boss3] armor.head with player_head[minecraft:custom_name={text:"Skeleton King",color:"gold",underlined:true,bold:true,italic:false},minecraft:lore=[{text:"Custom Head ID: 114997",color:"gray",italic:false},{text:"www.minecraft-heads.com",color:"blue",italic:false}],profile={properties:[{name:"textures",value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvOGIwZTgxNTk2ODY1MzYxZDE3MjIxZjMxZTg5NzI0MmQyZWZlNjZiYWEyOWY2YzYwZTE1NDVmNmQ2ZTZlNGY2MiJ9fX0="}]}]
# item replace entity @e[tag=boss3] armor.head with player_head[minecraft:custom_name={text:"Skeleton",color:"gold",underlined:true,bold:true,italic:false},minecraft:lore=[{text:"Custom Head ID: 109419",color:"gray",italic:false},{text:"www.minecraft-heads.com",color:"blue",italic:false}],profile={properties:[{name:"textures",value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvOTlhNGVmYTRjZWFiNWRmMDQ0OGVlYWRkMGQ3MjUwMTE1Y2ZhMTAxZGQ2ODMyZWQ5YmZmYmU1ZjM0OTlhZWM3In19fQ=="}]}]
item replace entity @e[tag=boss3] armor.head with player_head[minecraft:custom_name={text:"Piglin King",color:"gold",underlined:true,bold:true,italic:false},minecraft:lore=[{text:"Custom Head ID: 57197",color:"gray",italic:false},{text:"www.minecraft-heads.com",color:"blue",italic:false}],profile={properties:[{name:"textures",value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvOThhNzBkZjhjNTMxZDBjYWMwNDY5NGYyYTJhYjVmNzU3YzczMmRlMmI2NTY3OTNlNTQ5YTc0Njc5YjQ1YzljMiJ9fX0="}]}]
item replace entity @e[tag=boss3] armor.chest with minecraft:netherite_chestplate[trim={material:"minecraft:gold",pattern:"minecraft:dune"}]
item replace entity @e[tag=boss3] armor.legs with minecraft:netherite_leggings[trim={material:"minecraft:gold",pattern:"minecraft:eye"}]
item replace entity @e[tag=boss3] armor.feet with minecraft:netherite_boots[trim={material:"minecraft:gold",pattern:"minecraft:eye"}]
item replace entity @e[tag=boss3] weapon.mainhand with golden_axe
item replace entity @e[tag=boss3] weapon.offhand with shield