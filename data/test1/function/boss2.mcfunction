
kill @e[tag= boss2]
summon minecraft:wither ~ ~1 ~ {Tags: ["boss2"],Team:"boss",attributes:[{id:max_health,base:1000},{id:scale,base: 2},{id:movement_speed,base:0.4},{id:attack_damage,base:50}],Health:1000f}
# execute as @e[tag= boss2] at @s run attribute @s max_health base set 1000
execute as @e[tag= boss2] at @s run attribute @s follow_range base set 100
effect give @e[tag= boss2] instant_health 3 200
# data merge entity @e[tag=boss2] {Health:100f}
# item replace entity @e[tag=boss2] armor.head with player_head[minecraft:custom_name={text:"Skeleton King",color:"gold",underlined:true,bold:true,italic:false},minecraft:lore=[{text:"Custom Head ID: 114997",color:"gray",italic:false},{text:"www.minecraft-heads.com",color:"blue",italic:false}],profile={properties:[{name:"textures",value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvOGIwZTgxNTk2ODY1MzYxZDE3MjIxZjMxZTg5NzI0MmQyZWZlNjZiYWEyOWY2YzYwZTE1NDVmNmQ2ZTZlNGY2MiJ9fX0="}]}]
# item replace entity @e[tag=boss2] armor.head with player_head[minecraft:custom_name={text:"Skeleton",color:"gold",underlined:true,bold:true,italic:false},minecraft:lore=[{text:"Custom Head ID: 109419",color:"gray",italic:false},{text:"www.minecraft-heads.com",color:"blue",italic:false}],profile={properties:[{name:"textures",value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvOTlhNGVmYTRjZWFiNWRmMDQ0OGVlYWRkMGQ3MjUwMTE1Y2ZhMTAxZGQ2ODMyZWQ5YmZmYmU1ZjM0OTlhZWM3In19fQ=="}]}]