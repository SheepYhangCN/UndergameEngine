_hint=false;
alarm[0]=1;
Dialog_Clear()
x=room_width/2
y=room_height/2

audio_play_sound(snd_logo,0,false);

var old=false
//检测老存档
for(var save=0;save<10;save+=1){
if(file_exists(working_directory+"file"+string(save)+".ini")){
ini_open(working_directory+"file"+string(save)+".ini")
if(ini_read_real("2check","2check",false)=false){
old=true}
ini_close()}}
if(old){CC_Add(GetString("str_old_save_file_detected"),300)}