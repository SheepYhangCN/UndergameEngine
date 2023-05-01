depth=DEPTH_UI.TEXT
//instance_create_depth(0,0,depth+2,obj_background)
if!(os_type=os_android||os_type=os_ios||os_type=os_winphone||os_browser=browser_ie_mobile||os_browser=browser_ie_mobile){
instance_create_depth(0,0,depth+1,obj_effect_space)}
window_mouse_set(device_mouse_x(0),device_mouse_y(0))

choice=-1
choice_min=-1
choice_max=0
choice_mg=choice_max-(-1)
phase=0
phases=0
quit=false
enabled=true
changing=false
starting=false

instance_create_depth(320,45,0,obj_game_selection_scrollbar)
instance_create_depth(160,200,depth,obj_game_selection_arrow_left)
instance_create_depth(480,200,depth,obj_game_selection_arrow_right)
instance_create_depth(320+40,405+12,depth,obj_game_selection_arrow_up)
instance_create_depth(320+40,460-12,depth,obj_game_selection_arrow_down)
instance_create_depth(0,0,depth,obj_game_selection_quit)
gameobj=instance_create_depth(320,200,depth,obj_game)
gameobj_previous=noone
gameobj_next=noone