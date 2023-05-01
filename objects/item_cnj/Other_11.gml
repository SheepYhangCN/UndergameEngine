//Dialog_Add("* TML&{sleep 20}* The creator of UTE.&{sleep 20}* Can make your HP max out.");
if(IsEng()){
	Dialog_Add("* CNJ{sleep 15}&* Can recover 55 HP.")
}else if(IsChs()){
	Dialog_Add("* CNJ{sleep 15}&* 可以恢复55点HP。")
}
Dialog_Start();
event_inherited();