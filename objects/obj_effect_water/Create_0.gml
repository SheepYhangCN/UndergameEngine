sf = surface_create(640, 480)
d = 0
height = 0
depth=DEPTH_UI.FADER+2

if(Border_IsEnabled()){
Border_SetEnabled(false)
CC_Add(GetString("str_water_effect_border"))
}