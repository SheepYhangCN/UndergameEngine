//Dialog_Add("* TML&{sleep 20}* The creator of UTE.&{sleep 20}* Can make your HP max out.");
if(IsEng()){
	Dialog_Add("* Ptfk{sleep 15}&* Can recover -1 HP.")
}else if(IsChs()){
	Dialog_Add("* 拼图方块{sleep 15}&* 可以恢复-1点HP。")
}
Dialog_Start();
event_inherited();