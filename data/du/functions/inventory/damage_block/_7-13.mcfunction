
execute store result score temp_0 du_data run data get entity @s Items[10].Slot
execute if score temp_0 du_data <= in_0 du_data run function du:inventory/damage_block/__7-10
execute if score temp_0 du_data > in_0 du_data run function du:inventory/damage_block/__11-13
