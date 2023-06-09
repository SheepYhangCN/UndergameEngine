if(temp!=1){
instance_destroy(keyboard)
instance_destroy(controller_n)
instance_destroy(controller_x)

keyboard=instance_create_depth(170,220,0,text_typer)
controller_n=instance_create_depth(170,255,0,text_typer)
controller_x=instance_create_depth(170,290,0,text_typer)

if(Input_IsPressed(INPUT.UP)||input_check("up")){
	if(choice=1){
	audio_play_sound(snd_menu_switch,0,0)
	choice=0}
	if(choice=2){
	audio_play_sound(snd_menu_switch,0,0)
	choice=1}
}
if(Input_IsPressed(INPUT.DOWN)||input_check("down")){
	if(choice=1){
	audio_play_sound(snd_menu_switch,0,0)
	choice=2}
	if(choice=0){
	audio_play_sound(snd_menu_switch,0,0)
	choice=1}
}
if(choice=0){
keyboard.text=prefix+"{color `yellow`}"+GetString("str_controller_keyboard")
controller_n.text=prefix+GetString("str_controller_n")
controller_x.text=prefix+GetString("str_controller_x")}
if(choice=1){
keyboard.text=prefix+GetString("str_controller_keyboard")
controller_n.text=prefix+"{color `yellow`}"+GetString("str_controller_n")
controller_x.text=prefix+GetString("str_controller_x")}
if(choice=2){
keyboard.text=prefix+GetString("str_controller_keyboard")
controller_n.text=prefix+GetString("str_controller_n")
controller_x.text=prefix+"{color `yellow`}"+GetString("str_controller_x")}}

if((Input_IsPressed(INPUT.CONFIRM)||(choice=2&&input_check("confirm"))||(choice=1&&input_check("cancel")))&&temp!=1){
	instance_destroy(title)
	instance_destroy(keyboard)
	instance_destroy(controller_n)
	instance_destroy(controller_x)
	temp=1
	audio_play_sound(snd_menu_confirm,0,0)
	alarm[0]=60
}