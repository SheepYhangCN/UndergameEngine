///@desc Use
Item_Add(Item_GetArmor())
Item_SetArmor(item_shield)

audio_play_sound(snd_item_equip,0,false);

event_inherited();