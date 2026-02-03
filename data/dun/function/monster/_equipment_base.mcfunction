# 

execute store result score #value _rand run random value 0..100

execute if score #value _rand matches 0..30 run data modify storage dun: _monster.equipment_base set value leather
execute if score #value _rand matches 31..46 run data modify storage dun: _monster.equipment_base set value chainmail
execute if score #value _rand matches 47..60 run data modify storage dun: _monster.equipment_base set value gold
execute if score #value _rand matches 61..79 run data modify storage dun: _monster.equipment_base set value iron
execute if score #value _rand matches 80..94 run data modify storage dun: _monster.equipment_base set value diamond
execute if score #value _rand matches 95..100 run data modify storage dun: _monster.equipment_base set value netherite