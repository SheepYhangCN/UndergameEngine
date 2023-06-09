//Input defines the default profiles as a macro called 
//This macro is parsed when Input boots up and provides the baseline bindings for your game
//
//  Please edit this macro to meet the needs of your game!
//
//The root struct called __input_config_verbs() contains the names of each default profile
//Default profiles then contain the names of verbs. Each verb should be given a binding that is
//appropriate for the profile. You can create bindings by calling one of the input_binding_*()
//functions, such as input_binding_key() for keyboard keys and input_binding_mouse() for
//mouse buttons

return {
    
    keyboard_and_mouse:
    {/*
        up:    [input_binding_key(vk_up),    input_binding_key("W")],
        down:  [input_binding_key(vk_down),  input_binding_key("S")],
        left:  [input_binding_key(vk_left),  input_binding_key("A")],
        right: [input_binding_key(vk_right), input_binding_key("D")],
        
        accept:  input_binding_key(vk_space),
        cancel:  input_binding_key(vk_backspace),
        action:  input_binding_key(vk_enter),
        special: input_binding_key(vk_shift),
        
        //No aiming verbs since we use the mouse for that (see below for aiming verb examples)
        shoot: input_binding_mouse_button(mb_left),
        
        pause: input_binding_key(vk_escape),*/
		tab: input_binding_key(vk_tab)
    },
    
    gamepad:
    {
        up:    input_binding_gamepad_axis(gp_axislv, true),
        down:  input_binding_gamepad_axis(gp_axislv, false),
        left:  input_binding_gamepad_axis(gp_axislh, true),
        right: input_binding_gamepad_axis(gp_axislh, false),
        
        cancel:  input_binding_gamepad_button(gp_face1),
        confirm:  input_binding_gamepad_button(gp_face2),
        space:  input_binding_gamepad_button(gp_face3),
        control: input_binding_gamepad_button(gp_face4),
        
        aim_up:    input_binding_gamepad_axis(gp_axisrv, true),
        aim_down:  input_binding_gamepad_axis(gp_axisrv, false),
        aim_left:  input_binding_gamepad_axis(gp_axisrh, true),
        aim_right: input_binding_gamepad_axis(gp_axisrh, false),
        
        pad_up:    input_binding_gamepad_button(gp_padu, true),
        pad_down:  input_binding_gamepad_button(gp_padd, false),
        pad_left:  input_binding_gamepad_button(gp_padl, true),
        pad_right: input_binding_gamepad_button(gp_padr, false),
        shoot:     [input_binding_gamepad_button(gp_shoulderlb), input_binding_gamepad_button(gp_shoulderrb)],
        
        select: input_binding_gamepad_button(gp_select),
        pause: input_binding_gamepad_button(gp_start),
    },
    
    touch:
    {
        up:    input_binding_virtual_button(),
        down:  input_binding_virtual_button(),
        left:  input_binding_virtual_button(),
        right: input_binding_virtual_button(),
        
        accept:  input_binding_virtual_button(),
        cancel:  input_binding_virtual_button(),
        action:  input_binding_virtual_button(),
        special: input_binding_virtual_button(),
        
        pause: input_binding_virtual_button(),
    }
    
};