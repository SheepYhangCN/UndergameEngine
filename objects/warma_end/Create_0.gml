fader.alpha=0
temp=0
audio_stop_sound(bgm_sansdate)
audio_play_sound(bgm_sansdate,0,1)
global.passed[BATTLE.WARMA]=true
ini_open(working_directory+"/file"+string(Flag_GetSaveSlot())+".ini")
ini_write_real("passed",BATTLE.WARMA,global.passed[BATTLE.WARMA])
ini_close()
typer=instance_create_depth(10,10,0,text_typer)
typer.text="{instant true}{skippable false}{font 1}{scale 2}"
if(IsEng()){
typer.text+="{scale 4}Warmtale&{scale 3}Warma Fight Phase 1&{scale 2}Made By SheepYhangCN&AU By TH-HT, xny, --地狱拖拉机-&Text By TH-HT, SheepYhangCN&Warma Sprite By --地狱拖拉机-&Song in Battle By Loris"
typer1=instance_create_depth(180,440,0,text_typer)
typer1.text="{scale 2}{instant true}{color `gray`}[Press Z or Enter]"}
if(IsChs()){
typer.text+="{scale 4}Warmtale&{scale 3}沃玛战 第1阶段&{scale 2}By 憨憨羊の宇航鸽鸽&AU By TH-跳、夏诺叶、--地狱拖拉机-&文本By TH-跳、憨憨羊の宇航鸽鸽&沃玛贴图By --地狱拖拉机-&战斗用曲 By 洛白Loris"
typer1=instance_create_depth(200,440,0,text_typer)
typer1.text="{font 0}{scale 2}{instant true}{color `gray`}[按下 Z 或 Enter]"}