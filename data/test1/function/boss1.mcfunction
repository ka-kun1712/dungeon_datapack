summon zombie ~ ~1 ~ { Tags: ["boss1"],CustomName:"ᓀ‸ᓂ"}
summon zombie_horse ~ ~1 ~ { Tags: ["boss1"] }
execute as @e[tag= boss1] at @s run attribute @s scale base set 2
execute as @e[tag= boss1,type=zombie_horse] at @s run attribute @s movement_speed base set 0.5
execute as @e[tag= boss1,type=zombie] at @s run attribute @s movement_speed base set 0.4
execute as @e[tag= boss1,type=zombie_horse] at @s run attribute @s max_health base set 25
execute as @e[tag= boss1,type=zombie] at @s run attribute @s max_health base set 50
execute as @e[tag= boss1] at @s run attribute @s attack_knockback base set 2
execute as @e[tag= boss1] at @s run attribute @s attack_speed base set 10
effect give @e[tag=boss1] instant_damage 1 100
ride @e[tag= boss1,type=zombie,limit=1] mount @e[tag=boss1,type=zombie_horse,limit=1]
# item replace entity @e[tag=boss1] armor.head with player_head[minecraft:custom_name={text:"Skeleton King",color:"gold",underlined:true,bold:true,italic:false},minecraft:lore=[{text:"Custom Head ID: 114997",color:"gray",italic:false},{text:"www.minecraft-heads.com",color:"blue",italic:false}],profile={properties:[{name:"textures",value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvOGIwZTgxNTk2ODY1MzYxZDE3MjIxZjMxZTg5NzI0MmQyZWZlNjZiYWEyOWY2YzYwZTE1NDVmNmQ2ZTZlNGY2MiJ9fX0="}]}]
# item replace entity @e[tag=boss1] armor.head with player_head[minecraft:custom_name={text:"Skeleton",color:"gold",underlined:true,bold:true,italic:false},minecraft:lore=[{text:"Custom Head ID: 109419",color:"gray",italic:false},{text:"www.minecraft-heads.com",color:"blue",italic:false}],profile={properties:[{name:"textures",value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvOTlhNGVmYTRjZWFiNWRmMDQ0OGVlYWRkMGQ3MjUwMTE1Y2ZhMTAxZGQ2ODMyZWQ5YmZmYmU1ZjM0OTlhZWM3In19fQ=="}]}]
item replace entity @e[tag=boss1] armor.head with player_head[minecraft:custom_name={text:"Zombie King",color:"gold",underlined:true,bold:true,italic:false},minecraft:lore=[{text:"Custom Head ID: 18550",color:"gray",italic:false},{text:"www.minecraft-heads.com",color:"blue",italic:false}],profile={properties:[{name:"textures",value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvNGMxNWE1OGRmMDJlOTg0NDJmNzk0MGRhNDhjNGUwNTU3ZTA4MzVmMWZmMjM1MGNiNDIzNzlkOWE4ZWFjMDEwYiJ9fX0="}]}]
item replace entity @e[tag=boss1] armor.chest with minecraft:netherite_chestplate[trim={material:"minecraft:diamond",pattern:"minecraft:silence"}]
item replace entity @e[tag=boss1] armor.legs with minecraft:netherite_leggings[trim={material:"minecraft:diamond",pattern:"minecraft:silence"}]
item replace entity @e[tag=boss1] armor.feet with minecraft:netherite_boots[trim={material:"minecraft:diamond",pattern:"minecraft:silence"}]
item replace entity @e[tag=boss1] weapon.mainhand with netherite_sword
item replace entity @e[tag=boss1] weapon.offhand with shield