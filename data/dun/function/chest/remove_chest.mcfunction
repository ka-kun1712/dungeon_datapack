# {pos: position}

$execute unless data storage dun: chest.positions[{pos:"$(pos)"}] run return -1

$data remove storage dun: chest.positions[{pos:"$(pos)"}]
tellraw @a[team=admin,tag=debug] removed
