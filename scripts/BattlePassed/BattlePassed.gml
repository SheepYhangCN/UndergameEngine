///@arg battle_num
function BattlePassed(){
global.passed[argument[0]]=true
ini_open(working_directory+"/file"+string(Flag_GetSaveSlot())+".ini")
ini_write_real("passed",argument[0],global.passed[argument[0]])
ini_close()
}