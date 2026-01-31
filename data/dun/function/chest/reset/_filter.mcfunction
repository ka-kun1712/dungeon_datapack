# {index,value,filter}

$execute if data storage util: for_data_args_0.value{group:"$(filter)"} run data modify storage dun: _filtered_positions append from storage dun: chest.positions[$(index)]

# tellraw @s {storage:"util:",nbt:"for_data_args_0"}