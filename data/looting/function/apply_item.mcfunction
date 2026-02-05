# 

execute unless data entity @s SelectedItem.components."minecraft:custom_data".looting run return fail

execute if data entity @s SelectedItem.components."minecraft:custom_data".looting~{searched:true} run return fail

execute if data entity @s SelectedItem.components."minecraft:custom_data".looting{tier:1b} run item modify entity @s weapon.mainhand looting:1
execute if data entity @s SelectedItem.components."minecraft:custom_data".looting{tier:2b} run item modify entity @s weapon.mainhand looting:2
execute if data entity @s SelectedItem.components."minecraft:custom_data".looting{tier:3b} run item modify entity @s weapon.mainhand looting:3
execute if data entity @s SelectedItem.components."minecraft:custom_data".looting{tier:4b} run item modify entity @s weapon.mainhand looting:4
execute if data entity @s SelectedItem.components."minecraft:custom_data".looting{tier:5b} run item modify entity @s weapon.mainhand looting:5
execute if data entity @s SelectedItem.components."minecraft:custom_data".looting{tier:9b} run item modify entity @s weapon.mainhand looting:9

execute if data entity @s SelectedItem.components."minecraft:custom_data".looting.lore run function util:for_data {function:"looting:modifier/set_lore",data:"entity @s SelectedItem.components.minecraft:custom_data.looting.lore",args_id:0,for_id:0,start_index:0}

execute unless data entity @s SelectedItem.components."minecraft:custom_data".looting{searched:true} run playsound minecraft:entity.item.pickup master @s ~ ~ ~ 0.2 2
execute unless data entity @s SelectedItem.components."minecraft:custom_data".looting{searched:true} run tellraw @s {entity:"@s",nbt:"SelectedItem.components.minecraft:custom_name",interpret:true} 

item modify entity @s weapon.mainhand {function:"set_custom_data",tag:{looting:{searched:true}}}
