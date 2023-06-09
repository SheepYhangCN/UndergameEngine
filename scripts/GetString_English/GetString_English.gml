///@arg localization_id
function GetString_English(){
	var lid=argument[0]
	var result="<Undefined String: "+lid+">"
	switch(lid){
#region System
		case "str_language_name":
			result="English"
			break
		case "str_weekday0":
			result="Sunday"
			break
		case "str_weekday1":
			result="Monday"
			break
		case "str_weekday2":
			result="Tuesday"
			break
		case "str_weekday3":
			result="Wednesday"
			break
		case "str_weekday4":
			result="Thursday"
			break
		case "str_weekday5":
			result="Friday"
			break
		case "str_weekday6":
			result="Saturday"
			break
		case "str_easymode":
			result="Easy Mode"
			break
		case "str_hardmode":
			result="HARD Mode"
			break
		case "str_tas_hint":
			result="[scale,2]Tas Mode\n(Speed: "+string(room_speed/60)+"x/"+string(room_speed)+"fps)"
			break
		case "str_tas_warning":
			result="[c_red]Warning! Tas mode is a experimental feature!\nMight cause some problems!\n\n[c_orange]Left Alt - Decrease FPS\nRight Alt - Increase FPS"
			break
		case "str_restarting":
			result="Restarting..."
			break
		case "str_vape_installed":
			result="Vape v114.514 Installed"
			break
		case "str_vape_uninstalled":
			result="Vape v114.514 Uninstalled"
			break
		case "str_mobile_control_hint":
			result="{font 1}Tap back button(mobile) or backspace&key(desktop) to switch the&mobile controller."
			break
		case "str_mobile_control_current_crosu":
			result="{font 1}Current: Mobile Control By Crosu"
			break
		case "str_mobile_control_current_darknslim":
			result="{font 1}Current: Mobile Control By Darknslim"
			break
		case "str_mobile_control_current_off":
			result="{font 1}Current: Disabled"
			break
		case "str_quitting":
			result="Quitting"
			break
		case "str_logo":
			result="[scale,1][font_mars_needs_cunnilingus][[Press Z or Enter]"
			break
		case "str_controller_prefix":
			result="{instant true}{scale 2}{font 1}"
			break
		case "str_controller_title":
			result="Controller was detected.&Which playing method do you prefer?"
			break
		case "str_controller_keyboard":
			result="keyboard"
			break
		case "str_controller_n":
			result="Controller (Nintendo Standard)"
			break
		case "str_controller_x":
			result="Controller (Xbox Standard)"
			break
		case "str_warning_title":
			result="{scale 3}{instant true}{color `red`}Epilepsy Warning"
			break
		case "str_warning":
			result="{font 1}{scale 2}{instant true}This game contains flickering screens and&other screen effects that may cause epilepsy.&For patients with epilepsy, please turn off&the game or be fully prepared. For players&with unidentified epilepsy who experience&dizziness, blurred vision, eye or face&twitching, limb twitching, disorientation,&confusion or brief loss of consciousness,&please close the game immediately and&ask for help from a family member or&a doctor."
			break
		case "str_warning_press":
			result="{scale 2}{instant true}{color `gray`}[Press Z or Enter]"
			break
		case "str_menu_continue":
			result="Continue"
			break
		case "str_menu_reset":
			result="Reset"
			break
		case "str_menu_begin":
			result="Begin Game"
			break
		case "str_menu_settings":
			result="Settings"
			break
		case "str_menu_credits":
			result="Credits"
			break
		case "str_menu_saveoptions":
			result="Save Options"
			break
		case "str_menu_empty":
			result="{font 1}EMPTY"
			break
		case "str_menu_instruction":
			result="{color_text `gray_light`}{font 1} --- Keys ---{space_y -1}&{space_y 2}[F1] - Restart&[F2] - Restart Room&[F4] - Fullscreen&[X/Shift] - Run(Overworld)&[X/Shift] - Slow(In Battle)&[Insert] - DEBUG MODE&Tap the back button(backspace) to&switch the mobile controller."
			break
		case "str_menu_naming_title":
			result="{font 1}Please input your name."
			break
		case "str_menu_naming_quit":
			result="Quit"
			break
		case "str_menu_naming_backspace":
			result="Backspace"
			break
		case "str_menu_naming_done":
			result="Done"
			break
		case "str_menu_naming_yes":
			result="{font 1}Yes"
			break
		case "str_menu_naming_no":
			result="{font 1}No"
			break
		case "str_menu_naming_check_default":
			result="{font 1}Is this name correct?"
			break
		case "str_menu_naming_check_aaaaaa":
			result="{font 1}Not very creative...?"
			break
		case "str_border_simple":
			result="Simple"
			break
		case "str_border_sepia":
			result="Sepia"
			break
		case "str_border_rad":
			result="Rad"
			break
		case "str_border_dog":
			result="Dog"
			break
		case "str_settings_on":
			result="On"
			break
		case "str_settings_off":
			result="Off"
			break
		case "str_settings_none":
			result="None"
			break
		case "str_settings_n/a":
			result="{color `red`}N/A"
			break
		case "str_settings_mode_easy":
			result="{color `lime`}Easy"
			break
		case "str_settings_mode_normal":
			result="Normal"
			break
		case "str_settings_mode_hard":
			result="{color `red`}Hard"
			break
		case "str_settings_season_spring":
			result="{color `gray`}{scale 2}{instant true}{font 1}spring time&back to school."
			break
		case "str_settings_season_summer":
			result="{color `gray`}{scale 2}{instant true}{font 1}try to withstand&the sun's&life-giving rays."
			break
		case "str_settings_season_autumn":
			result="{color `gray`}{scale 2}{instant true}{font 1}sweep a leaf,&sweep away a troubles."
			break
		case "str_settings_season_winter":
			result="{color `gray`}{scale 2}{instant true}{font 1}cold outside&but stay warm&inside of you."
			break
		case "str_settings_language":
			result="Language"
			break
		case "str_settings_language_locked":
			result="Language (Locked)"
			break
		case "str_settings_window_size":
			result="Window Size"
			break
		case "str_settings_fullscreen":
			result="Fullscreen"
			break
		case "str_settings_mode":
			result="Mode"
			break
		case "str_settings_volume":
			result="Volume"
			break
		case "str_settings_border":
			result="Border"
			break
		case "str_settings_save_back":
			result="Save \\& Back"
			break
		case "str_save_options_message_copied":
			result="[scale,2]Copied Save #"+string(Flag_GetSaveSlot())+" to Slot "+string(id.select_previous)+"!"
			break
		case "str_save_options_message_moved":
			result="[scale,2]Moved Save #"+string(id.slot_previous)+" to Slot "+string(id.select_previous)+"!"
			break
		case "str_save_options_message_deleted":
			result="[scale,2]Deleted Save #"+string(id.slot_previous)+"!"
			break
		case "str_save_options_copy_to":
			result="Copy to"
			break
		case "str_save_options_move_to":
			result="Move to"
			break
		case "str_save_options_delete":
			result="Delete"
			break
		case "str_save_options_confirm_back":
			result="Confirm \\& Back"
			break
		case "str_save_options_warning_overwrite":
			result="{scale 1.6}{color `red`}(Are you sure? It will overwrite your old save file!)"
			break
		case "str_save_options_warning_delete":
			result="{scale 1.6}{color `red`}(Are you sure? It will delete your save file FOREVER!)"
			break
		case "str_gameover":
			result="{color `white`}{speed 5}{font 1}{scale 2}{voice 1}Stay determined...&&  {choice 0} Retry          {choice 1} Give Up{instant false}{choice `CHOICE`}{pause}{choice_retry}{end}"
			break
		case "str_gameover_window":
			result="Stay determined..."
			break
		case "str_gameover_file":
			result="You have no save file,\nnow you have been sent back to menu."
			break
		case "str_chest":
			result="* (This is a chest. ){sleep 15}&* (Do you want to use it? ){sleep 15}{ui_choice 2}{ui_choice1 `Yes`}{ui_choice2 `No`}{pause}{choice_box}{end}"
			break
		case "str_ui_box_inventory":
			result="{font 1}INVENTORY"
			break
		case "str_ui_box_box":
			result="{font 1}BOX"
			break
		case "str_ui_box_finish":
			result="{font 1}Press [X] to finish"
			break
		case "str_ui_esc":
			result="Return&Back to Menu&Quit Game"
			break
		case "str_ui_esc_confirm":
			result="[scale,2]Are you sure?\n[[Z/Enter] to confirm\n[[X/Shift] to cancel"
			break
		case "str_ui_menu":
			result="{space_y 2}"+(Item_GetNumber()<=0 ? "{color_text `gray`}" : "")+"{font 1}ITEM"+(Item_GetNumber()<=0 ? "{color_text `white`}" : "")+"&"+"{font 1}STAT"+(Phone_GetNumber()>0 ? "&"+"CELL" : "")
			break
		case "str_ui_menu_item_use":
			result="{font 1}USE"
			break
		case "str_ui_menu_item_info":
			result="{font 1}INFO"
			break
		case "str_ui_menu_item_drop":
			result="{font 1}DROP"
			break
		case "str_ui_menu_stat_none":
			result="NONE"
			break
		case "str_ui_menu_stat_0":
			result="{font 1}\"{insert NAME}\"{space_y -1}&&{space_y 0}LV  {insert LV}&HP  {insert HP} / {insert HP_MAX}&&AT  {insert ATK} ({insert ATK_ITEM})&DF  {insert DEF} ({insert DEF_ITEM}){space_y -1}&&{space_y 0}WEAPON: {insert WEAPON}&ARMOR: {insert ARMOR}{space_y 4}&{space_y 0}GOLD: {insert GOLD}"
			break
		case "str_ui_menu_stat_1":
			result="{font 1}EXP: {insert EXP}&NEXT: {insert EXP_NEXT}"
			break
		case "str_ui_menu_stat_1_kills":
			result="{font 1}{space_y -1}&&{space_y 0}&{space_y 4}&{space_y 0}KILLS: {insert KILLS}"
			break
		case "str_ui_save_slot":
			result="Slot"
			break
		case "str_ui_save_save":
			result="{font 1}Save"
			break
		case "str_ui_save_overwrite":
			result="{font 1}Overwrite"
			break
		case "str_ui_save_return":
			result="{font 1}Return"
			break
		case "str_ui_save_saved":
			result="{font 1}File Saved."
			break
		case "str_ui_save_overwrited":
			result="{font 1}File Overwrited."
			break
		case "str_battle_spare":
			result="* Spare"
			break
		case "str_battle_flee":
			result="* Flee"
			break
		case "str_battle_won":
			result="{font 0}* You WON!&* You earned {insert EXP} EXP and {insert GOLD} GOLD."
			break
		case "str_battle_won_lv":
			result="&"+"{font 0}* Your LOVE increased."
			break
		case "str_battle_ran":
			result=choose("{font 0}* Escaped...","{font 0}* I'm outta here.","{font 0}* I've got better to do.","{font 0}* Don't slow me down.")
			break
		case "str_battle_ran_with":
			result="{font 0}* Ran away with {insert EXP} EXP&  and {insert GOLD} GOLD."
			break
		case "str_battle_secondary_use":
			result="Use"
			break
		case "str_battle_secondary_info":
			result="Info"
			break
		case "str_battle_secondary_drop":
			result="Drop"
			break
		case "str_shop_menu":
			result="  Buy&  Sell&  Talk&  Exit"
			break
		case "str_shop_exit":
			result="Exit"
			break
		case "str_shop_buying_0":
			result="Buy it for&"
			break
		case "str_shop_buying_1":
			result="G?& Yes& No"
			break
		case "str_shop_selling_0":
			result="Sell it for "+string(Item_GetSellGold(Item_Get(id._index)))+"G?&&"
			break
		case "str_shop_selling_1":
			result="  Yes                  No"
			break
		case "str_water_effect_border":
			result="{font 1}Because of a bug of Water Effect,&Border was disabled."
			break
		case "str_space_effect_fps":
			result="{font 1}Because the fps is too low,&the space background was removed"
			break
		case "str_credits_title":
			result="{scale 3}{instant true}Credits"
			break
		case "str_credits_hint":
			result="{scale 2}{instant true}{color `gray`}{font 1}[Use arrow keys to swtich page]&[Press X or Shift to return]"
			break
		case "str_credits_page":
			result="{scale 2}{instant true}{color `gray`}<{color `white`}Page "+string(id.page+1)+"/4>"
			break
		case "str_credits0":
			result="{font 1}{scale 2}{speed 1}{instant true}UndergameEngine By SheepYhangCN&UNDERTALE Engine By TML&GameMaker By YoyoGames&&Blue Soul \\& Platform \\& Bone By OneZhaZha&Space background Shader By Kali&Shop By 不会起名的一杯猹 \\& OneZhaZha&Developer Console By DaveTech&Mobile Control By Darknslim \\& Crosu&Scribble \\& Input \\& Bulb \\& Coroutines&By Juju Adams"
			break
		case "str_credits1":
			result="{font 1}{scale 2}{speed 1}{instant true}Fonts used&Determination Sans/Mono,&Mars Needs Cunnilingus,Papyrus&By Toby Fox&SimSun By Beijing ZHONG YI ZHONG Biao&Electronic INFORMATION Technology Co.&方正少儿GBK, 方正卡通 By 方正字库&Comic Sans, Dotumche By Microsoft&GNU Unifont By Roman Czyborra"
			break
		case "str_credits2":
			result="{font 1}{scale 2}{speed 1}{instant true}Extra-Board and Cover-Board&Integrat By OneZhaZha&Codes to draw background effect By Siki&Initial achieve of Cover-Board By 穹c啋f汾&Completely achieve of Extra-Board By 奇迹丶零&(Original codes are from jkjkil4 on Gitee)&Test By Sanesss etc."
			break
		case "str_credits3":
			result="{font 1}{scale 2}{speed 1}{instant true}Special Thanks&&Cxx_w&Obbligato_Mayse&Ptfk&LiarOnce&Galaxia"
			break
		case "str_game_selection_hint_shop":
			result="[font_menu][scale,2](Shop)"
			break
		case "str_game_selection_hint_minigames":
			result="[font_menu][scale,2](Minigames "+string(obj_game_selection.choice-(obj_game_selection.choice_mg-1))+"/"+string(obj_game_selection.choice_max-obj_game_selection.choice_mg+1)+")"
			break
		case "str_game_selection_hint_battles":
			result="[font_menu][scale,2](Battles "+string(obj_game_selection.choice+1)+"/"+string(obj_game_selection.choice_mg)+")"
			break
		case "str_game_selection_quit":
			result="[scale,2][font_dialog]Quit\n[scale,1](X/Shift)"
			break
		case "str_game_selection_intro":
			result="Intro"
			break
		case "str_game_selection_corridor":
			result="Corridor"
			break
		case "str_game_selection_phase1":
			result="Phase 1"
			break
		case "str_game_selection_phase2":
			result="Phase 2"
			break
		case "str_game_selection_phase3":
			result="Phase 3"
			break
		case "str_game_selection_phase4":
			result="Phase 4"
			break
		case "str_game_selection_phase5":
			result="Phase 5"
			break
		case "str_game_selection_start":
			result="\n[[Z/Enter] or Click with cursor to Start"
			break
		case "str_game_selection_not_available":
			result="\nNot available yet"
			break
		case "str_game_selection_shop":
			result="Shop"
			break
#endregion
#region Room Name
	case "str_room_lobby":
		result="Lobby"
		break
#endregion
#region Items
	case "str_item_info_full":
		result="{font 1}{color `lime`}+Full HP"
		break
	case "str_item_tml_name":
		result="TML"
		break
	case "str_item_tml_use":
		result="* You ate {color `yellow`}TML{color `white`}. &{sleep 15}* UNDERTALE Engine Forever!&{sleep 15}* Your HP was maxed out."
		break
	case "str_item_tml_info":
		result="* {color `yellow`}TML{color `white`}&{sleep 20}* Creator of UNDERTALE Engine. &{sleep 20}* Can make your HP maxed out. "
		break
	case "str_item_tml_drop":
		result="* You throw {color `yellow`}TML{color `white`} away."
		break
	case "str_item_yuhang_name":
		result="SheepYhangCN"
		break
	case "str_item_yuhang_name_short":
		result="Yuhang"
		break
	case "str_item_yuhang_use":
		result="* You asked the game author for&  help.{pause}{clear}* He cleared your Karma and made&  your HP maxed out and ran away."
		break
	case "str_item_yuhang_info":
		result="* SheepYhangCN{sleep 15}&* The author of this game.{sleep 15}&* Just a failure."
		break
	case "str_item_yuhang_drop":
		result="* Yuhang ran away."
		break
	case "str_item_apple_name":
		result="Apple"
		break
	case "str_item_apple_use":
		result="* An apple a day, &  keeps the doctor away. {sleep 20}&* You recovered 40 HP. "
		break
	case "str_item_apple_info":
		result="{font 1}* Apple&{sleep 20}* An apple a day, keeps the doctor away. &{sleep 20}* Can recover 40 HP."
		break
	case "str_item_apple_drop":
		result="* You throw Apple away."
		break
	case "str_item_cake_name":
		result="Cake"
		break
	case "str_item_cake_use":
		result="* You ate Cake &{sleep 20}* Your HP was maxed out."
		break
	case "str_item_cake_info":
		result="* Cake&{sleep 20}* A delicious Cake. &{sleep 20}* Can make your HP max out."
		break
	case "str_item_cake_drop":
		result="* You throw Cake away."
		break
	case "str_item_knife_name":
		result="Real Knife"
		break
	case "str_item_locket_name":
		result="The Locket"
		break
	case "str_item_noodles_name":
		result="I.Noodles"
		break
	case "str_item_noodles_use":
		result="* They're better dry.{sleep 15}&* You recovered 90 HP."
		break
	case "str_item_shield_name":
		result="Shield"
		break
	case "str_item_shield_item_info":
		result="An armor"
		break
	case "str_item_shield_shop_desc":
		result="{font 1}Shield&Can use by&pressing [Space]&in battle"
		break
	case "str_item_shield_use":
		result="* Equipped Shield."
		break
	case "str_item_shield_info":
		result="* Shield{sleep 15}&* Can be use by holding [Space]&  in battle."
		break
	case "str_item_shield_drop":
		result="* You throw Shield away."
		break
	case "str_item_steak_name":
		result="Face Steak"
		break
	case "str_item_steak_name_short_serious":
		result="Steak"
		break
	case "str_item_steak_use":
		result="* You ate the Face Steak.{sleep 15}&* You recovered 60 HP."
		break
#endregion
#region Battles
		case "str_battle_act_check":
			result="Check"
			break
		case "str_battle_act_check_info":
			result="Check enemy data"
			break
		case "str_battle_act_talk":
			result="Talk"
			break
		case "str_battle_act_talk_info":
			result="Talk to enemy"
			break
		case "str_battle_act_flirt":
			result="Flirt"
			break
		case "str_battle_act_flirt_info":
			result="Flirt enemy"
			break
		case "str_battle_act_pray":
			result="Pray"
			break
		case "str_battle_act_pray_info":
			result="Clear Karma"
			break
		case "str_battle_act_pray_menu_dialog":
			result="* You say your prayers silently.{sleep 20}&* Your Karma has been clear!"
			break
		case "str_battle_act_heal":
			result="Heal"
			break
		case "str_battle_act_heal_info":
			result="{color `lime`}+Full HP"
			break
#endregion
		case "str_room_lobby_save":
			result="{audio_play `snd_item_heal`}* Seeing this empty lobby...{pause}{clear}* You filled with DETERMINATION!{pause}{clear}{heal_hp 9999999999}* (HP fully restored.){pause}{ui_save}{end}"
			break
	}
	return result
}