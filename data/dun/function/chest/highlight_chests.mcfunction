# {group: string}

$execute unless data storage dun: groups[{id:"$(group)"}] run return 0

$data modify storage util: for_data_args_0.filter set value "$(group)"

function util:for_data_command {command:"function dun:chest/reset/_filter with storage util: for_data_args_0", data:"storage dun: chest.positions", for_id:0, start_index: 0}

execute if data storage dun: _filtered_positions run function util:for_data_command {command:"function dun:chest/highlight/_summon_highlight with storage util: for_data_args_0", data:"storage dun: _filtered_positions", for_id:0, start_index: 0}

# clear
data remove storage dun: _filtered_positions
