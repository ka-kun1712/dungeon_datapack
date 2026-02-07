# 

execute store result score #value _rand run random value 0..100

execute if score #value _rand matches 0..29 run data modify storage dun: _monster.equipment_base set value leather
execute if score #value _rand matches 30..45 run data modify storage dun: _monster.equipment_base set value chainmail
execute if score #value _rand matches 46..61 run data modify storage dun: _monster.equipment_base set value gold
execute if score #value _rand matches 62..83 run data modify storage dun: _monster.equipment_base set value iron
execute if score #value _rand matches 84..97 run data modify storage dun: _monster.equipment_base set value diamond
execute if score #value _rand matches 98..100 run data modify storage dun: _monster.equipment_base set value netherite