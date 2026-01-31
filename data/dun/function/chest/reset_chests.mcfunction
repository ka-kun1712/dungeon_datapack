# {group: string}

$data modify storage util: for_data_args_0.filter set value "$(group)"

function util:for_data_command {command:"function dun:chest/reset/_filter with storage util: for_data_args_0", data:"storage dun: chest.positions", for_id:0, start_index: 0}

tellraw @s {storage:"dun:",nbt:"_filtered_positions"}

execute if data storage dun: _filtered_positions run function util:for_data_command {command:"function dun:chest/reset/_modify_loot_table with storage util: for_data_args_0", data:"storage dun: _filtered_positions", for_id:0, start_index: 0}

# clear
data remove storage dun: _filtered_positions
