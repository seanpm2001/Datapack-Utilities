
data merge block -29999999 0 1601 {Items:[]}

execute store success score temp_0 du_data if data entity @s SelectedItem
execute if score temp_0 du_data matches 1 run data modify block -29999999 0 1600 RecordItem.tag.du.temp_item set from entity @s SelectedItem
execute if score temp_0 du_data matches 1 run data modify block -29999999 0 1600 RecordItem.tag.du.temp_item.Slot set value 0b
execute if score temp_0 du_data matches 1 run data modify block -29999999 0 1601 Items append from block -29999999 0 1600 RecordItem.tag.du.temp_item

execute store success score temp_0 du_data if data entity @s Inventory[{Slot:-106b}]
execute if score temp_0 du_data matches 1 run data modify block -29999999 0 1600 RecordItem.tag.du.temp_item set from entity @s Inventory[{Slot:-106b}]
execute if score temp_0 du_data matches 1 run data modify block -29999999 0 1600 RecordItem.tag.du.temp_item.Slot set value 1b
execute if score temp_0 du_data matches 1 run data modify block -29999999 0 1601 Items append from block -29999999 0 1600 RecordItem.tag.du.temp_item