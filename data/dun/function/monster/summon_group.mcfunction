# {group: string}

$execute unless data storage dun: groups[{id:"$(group)"}] run return 0

$execute as @e[type=marker] if data entity @s data.dun{group:"$(group)"} at @s run function dun:monster/_summon_group {group:"$(group)"}
