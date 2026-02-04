# 

execute store result score #value _rand run random value 0..1

execute if score #value _rand matches 0 run function dun:monster/summon/evoker
execute if score #value _rand matches 1 run function dun:monster/summon/vindicator
