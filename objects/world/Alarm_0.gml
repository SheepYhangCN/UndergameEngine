instance_create_depth(0,0,depth,obj_debug)
if(os_type=os_android||os_type=os_ios||os_type=os_winphone||os_browser=browser_ie_mobile||os_browser=browser_ie_mobile){
CC_Add(GetString("str_mobile_control_hint"))
instance_create_depth(0,0,depth-1,obj_left_analog)
instance_create_depth(0,0,depth-1,obj_touch_buttons)
//instance_create_depth(0,0,0,mobile_control)
}
if(gamepad_is_supported()){
var gp=gamepad_get_device_count()
var gpp=0
var connected=false
repeat(gp){
if(gamepad_is_connected(gpp)){
	connected=true
	break
	}else{
	gpp+=1
	}
}
if(connected){room_goto(room_controller)}else{room_goto(room_logo)}
}else{room_goto(room_logo)}