//Dialog_Add("* TML&{sleep 20}* The creator of UTE.&{sleep 20}* Can make your HP max out.");
if(IsEng()){
	Dialog_Add("* Obbligato_Mayse{sleep 15}&* A Nekomusume.{sleep 15}&* Can recover 1+5+7+4+9 HP.")
}else if(IsChs()){
	Dialog_Add("* Obbligato_Mayse{sleep 15}&* 事猫娘。{sleep 15}&* 可以恢复1+5+7+4+9点HP。")
}
Dialog_Start();
event_inherited();