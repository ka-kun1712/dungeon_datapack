# execute positioned ~ ~1.6 ~ run summon arrow ^ ^ ^1 {Tags:["test_stick_projectile"],Rotation:[45,0]}
execute positioned 0.0 0.0 0.0 run summon marker ^ ^ ^2 {Tags:["test_marker"]}

# execute positioned ~ ~1.8 ~ run summon firework_rocket ^ ^ ^ {Tags:["test_stick_projectile"],FireworksItem:{id:firework_rocket,count:1,components:{fireworks:{flight_duration:0,explosions:[{shape:"large_ball",has_twinkle:false,has_trail:false,colors:[8772975,255,255]}]}}},LifeTime:50,ShotAtAngle:true}

# data modify storage dun: temp.y set from entity @s Rotation[0]
# data modify storage dun: temp.x set from entity @s Rotation[1]
execute store result storage dun: temp.y double -1 run data get entity @s Rotation[0]
execute store result storage dun: temp.x double -1 run data get entity @s Rotation[1]

function dun:item/_summon_arrow with storage dun: temp
data remove storage dun: temp

execute positioned ~ ~1.45 ~ run data modify entity @e[sort=nearest,tag=test_stick_projectile,limit=1] Motion set from entity @e[sort=nearest,tag=test_marker,limit=1] Pos
execute positioned ~ ~1.45 ~ run data modify entity @e[sort=nearest,tag=test_stick_projectile,limit=1] Owner set from entity @s UUID

# data modify entity @e[sort=nearest,tag=test_stick_projectile,limit=1] Rotation set from entity @s Rotation

# execute store result entity @e[sort=nearest,tag=test_stick_projectile,limit=1] Rotation[0] double 1 run data get entity @s Rotation[0]

kill @e[tag=test_marker]