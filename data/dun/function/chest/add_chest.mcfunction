# {pos: position, group: string}

$execute if data storage dun: chest.positions[{pos:"$(pos)"}] run return -1

$execute if block $(pos) #util:can_loot_table run data modify storage dun: _checked set value true
execute unless data storage dun: {_checked:true} run return -2

$execute unless data storage dun: chest.positions[{pos:"$(pos)"}] run say added
$data modify storage dun: chest.positions append value {pos:"$(pos)",group:$(group)}

# clear
data remove storage dun: _checked