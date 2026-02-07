# 

execute unless entity @s[type=marker,tag=spawner] run return 0
execute unless data entity @s data.dun run return -1
execute if data entity @s data.dun{spawned:true} run return -2

execute at @s run function dun:monster/_spawn_group with entity @s data.dun
data modify entity @s data.dun.spawned set value true
