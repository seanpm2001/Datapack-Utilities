
#get data
execute store result score temp_0 du_data run data get block ~ ~ ~ CookingTimes[1]
execute store result score temp_1 du_data run data get block ~ ~ ~ CookingTotalTimes[1]
execute store result score in_0 du_data run data get block ~ ~ ~ Items[{Slot:1b}].tag.du_smelt_id

#check status
scoreboard players remove temp_0 du_data 21
execute if score temp_0 du_data >= temp_1 du_data run function #du:recipes/campfire
execute if score temp_0 du_data >= temp_1 du_data run data remove block ~ ~ ~ Items[{Slot:1b}]
