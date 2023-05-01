fader.alpha=0
temp=0
audio_stop_sound(bgm_sansdate)
audio_play_sound(bgm_sansdate,0,1)
global.passed[BATTLE.SANS_CORE]=true
ini_open(working_directory+"/file"+string(Flag_GetSaveSlot())+".ini")
ini_write_real("passed",BATTLE.SANS_CORE,global.passed[BATTLE.SANS_CORE])
ini_close()
typer=instance_create_depth(10,10,0,text_typer)
typer.text="{instant true}{skippable false}{font 1}{scale 2}"
if(IsEng()){
typer.text+="{scale 3}Undertale: the Core Encounter&{scale 2}Made By SheepYhangCN&Song By sprins&Background from Storyshift: the Core Encounter&Sans Sprite By 池丫塘小莎"
typer1=instance_create_depth(180,440,0,text_typer)
typer1.text="{scale 2}{instant true}{color `gray`}[Press Z or Enter]"}
if(IsChs()){
typer.text+="{scale 3}Undertale: 核心之遇&{scale 2}By 憨憨羊の宇航鸽鸽&曲子By sprins&背景图来自Storyshift: the Core Encounter&Sans贴图By 池丫塘小莎"
typer1=instance_create_depth(200,440,0,text_typer)
typer1.text="{font 0}{scale 2}{instant true}{color `gray`}[按下 Z 或 Enter]"}