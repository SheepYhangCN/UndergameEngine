audio_play_sound(snd_ding,0,0)
temp=0
dialog=instance_create_depth(135+(IsChs() ? 35 : 0),10,0,text_typer)
dialog.text=GetString("str_warning_title")
dialog1=instance_create_depth(40+(IsChs() ? 35 : 0),60,0,text_typer)
dialog1.text=GetString("str_warning")
dialog2=instance_create_depth(180+(IsChs() ? 20 : 0),440,0,text_typer)
dialog2.text=GetString("str_warning_press")

//检测老存档并删除
for(var save=0;save<10;save+=1){
if(file_exists(working_directory+"file"+string(save)+".ini")){
ini_open(working_directory+"file"+string(save)+".ini")
if(ini_read_real("2check","2check",false)=false){
file_delete(working_directory+"/file"+string(save)+".ini")
directory_destroy(working_directory+"/flag/"+string(save))
CC_Add("{define `FILE` "+string(save)+"}"+GetString("str_old_save_file_deleted"))}
ini_close()
}}