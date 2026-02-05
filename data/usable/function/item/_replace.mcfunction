# {loot_table, command}

item replace entity @s weapon.mainhand with air
$loot replace entity @s weapon.mainhand loot $(loot_table)
item modify entity @s weapon.mainhand {function:"set_custom_data",tag:{looting:{searched:true}}}
function looting:apply_item

$$(command)