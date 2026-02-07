# {group: string}

$execute unless data storage dun: groups[{id:"$(group)"}] run return 0

$execute as @e[type=marker,tag=spawner] if data entity @s data.dun{group:"$(group)"} run function dun:monster/spawn
