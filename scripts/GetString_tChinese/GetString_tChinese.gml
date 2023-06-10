///@arg localization_id
function GetString_tChinese(){
	var lid=argument[0]
	var result="<Undefined String: "+lid+">"
	switch(lid){
#region 系統
		case "str_language_name":
			result="繁體中文"
			break
		case "str_weekday0":
			result="週日"
			break
		case "str_weekday1":
			result="週一"
			break
		case "str_weekday2":
			result="週二"
			break
		case "str_weekday3":
			result="週三"
			break
		case "str_weekday4":
			result="週四"
			break
		case "str_weekday5":
			result="週五"
			break
		case "str_weekday6":
			result="週六"
			break
		case "str_easymode":
			result="[scale,2][font_chs]簡單模式"
			break
		case "str_hardmode":
			result="[scale,2][font_chs]困難模式"
			break
		case "str_tas_hint":
			result="[scale,2][font_chs]變速模式\n[font_dialog]([font_chs]速度: [font_dialog]"+string(room_speed/60)+"x/"+string(room_speed)+"fps)"
			break
		case "str_tas_warning":
			result="[c_red]警告[font_dialog]! [font_chs]變速模式是一個實驗性功能[font_dialog]! [font_chs]\n可能會引起某些問題[font_dialog]! [font_chs]\n\n[c_orange]左[font_dialog]Alt - [font_chs]減少[font_dialog]FPS[font_chs]\n右[font_dialog]Alt - [font_chs]增加[font_dialog]FPS"
			break
		case "str_restarting":
			result="重啟中..."
			break
		case "str_vape_installed":
			result="Vape v114.514 已注入"
			break
		case "str_vape_uninstalled":
			result="Vape v114.514 已卸載"
			break
		case "str_mobile_control_hint":
			result="按下返回鍵(移動端)或退格鍵&(桌面端)來切換移動端控制。"
			break
		case "str_mobile_control_current_crosu":
			result="當前: 移動端控制By南省Crosu"
			break
		case "str_mobile_control_current_darknslim":
			result="當前: 移動端控制By Darknslim"
			break
		case "str_mobile_control_current_off":
			result="當前: 已關閉"
			break
		case "str_quitting":
			result="退出中"
			break
		case "str_logo":
			result="[scale,2][font_dialog][[[font_chs]按下 [font_dialog]Z[font_chs] 或 [font_dialog]Enter]"
			break
		case "str_controller_prefix":
			result="{instant true}{scale 2}{font 0}"
			break
		case "str_controller_title":
			result="已檢測到控制器。&你想使用哪種方式遊玩?"
			break
		case "str_controller_keyboard":
			result="鍵盤"
			break
		case "str_controller_n":
			result="手柄 (Nintendo標準)"
			break
		case "str_controller_x":
			result="手柄 (Xbox標準)"
			break
		case "str_warning_title":
			result="{font 0}{scale 3}{instant true}{color `red`}光敏性癲癇警告"
			break
		case "str_warning":
			result="{font 0}{scale 2}{instant true}本遊戲含有閃爍的畫面等&會引起光敏性癲癇的畫面效果。&對於有光敏性癲癇的患者, &請關閉遊戲或做好充足準備。&對於未查明有光敏性癲癇的玩家, &如果出現頭暈目眩、視力模糊、&眼睛或面部抽搐、四肢抽搐、迷失方向感、&精神錯亂或短暫的意識喪失等症狀, &請立即關閉遊戲並求助家屬或醫生。"
			break
		case "str_warning_press":
			result="{font 0}{scale 2}{instant true}{color `gray`}[按下 Z 或 Enter]"
			break
		case "str_menu_continue":
			result="{font 0}繼續"
			break
		case "str_menu_reset":
			result="{font 0}重置"
			break
		case "str_menu_begin":
			result="{font 0}開始遊戲"
			break
		case "str_menu_settings":
			result="{font 0}設置"
			break
		case "str_menu_credits":
			result="{font 0}鳴謝"
			break
		case "str_menu_saveoptions":
			result="{font 0}存檔選項"
			break
		case "str_menu_empty":
			result="{font 0}空"
			break
		case "str_menu_instruction":
			result="{font 1}{color_text `gray_light`} --- 按鍵 ---{space_y -1}&{space_y 2}[F1] - 重啟&[F2] - 重啟房間&[F4] - 全屏&[X/Shift] - 奔跑(主世界)&[X/Shift] - 減速(戰鬥中)&[Insert] - 調試模式&按下返回鍵(退格)來開關&移動端控制器"
			break
		case "str_menu_naming_title":
			result="{font 0}請輸入你的名字。"
			break
		case "str_menu_naming_quit":
			result="{font 0}退出"
			break
		case "str_menu_naming_backspace":
			result="{font 0}退格"
			break
		case "str_menu_naming_done":
			result="{font 0}完成"
			break
		case "str_menu_naming_yes":
			result="{font 0}是"
			break
		case "str_menu_naming_no":
			result="{font 0}否"
			break
		case "str_menu_naming_check_default":
			result="是這個名字沒錯嗎?"
			break
		case "str_menu_naming_check_aaaaaa":
			result="不是很有創造性...?"
			break
		case "str_border_simple":
			result="簡單"
			break
		case "str_border_sepia":
			result="簡約"
			break
		case "str_border_rad":
			result="精彩"
			break
		case "str_border_dog":
			result="狗"
			break
		case "str_settings_on":
			result="開"
			break
		case "str_settings_off":
			result="關"
			break
		case "str_settings_none":
			result="無"
			break
		case "str_settings_n/a":
			result="{color `red`}不可用"
			break
		case "str_settings_mode_easy":
			result="{color `lime`}簡單"
			break
		case "str_settings_mode_normal":
			result="普通"
			break
		case "str_settings_mode_hard":
			result="{color `red`}困難"
			break
		case "str_settings_season_spring":
			result="{color `gray`}{scale 2}{instant true}{font 1}春天來了&該上學了"
			break
		case "str_settings_season_summer":
			result="{color `gray`}{scale 2}{instant true}{font 1}我想像那&太陽一樣&散發光芒"
			break
		case "str_settings_season_autumn":
			result="{color `gray`}{scale 2}{instant true}{font 1}掃走一片樹葉&掃走一片煩惱"
			break
		case "str_settings_season_winter":
			result="{color `gray`}{scale 2}{instant true}{font 1}外面雖冷&但你內心&仍存溫暖"
			break
		case "str_settings_language":
			result="語言"
			break
		case "str_settings_language_locked":
			result="語言 (已鎖定)"
			break
		case "str_settings_window_size":
			result="視窗大小"
			break
		case "str_settings_fullscreen":
			result="全屏"
			break
		case "str_settings_mode":
			result="模式"
			break
		case "str_settings_volume":
			result="音量"
			break
		case "str_settings_border":
			result="邊框"
			break
		case "str_settings_save_back":
			result="儲存並返回"
			break
		case "str_save_options_message_copied":
			result="[scale,2][font_chs]已將[font_dialog]"+string(Flag_GetSaveSlot())+"[font_chs]號存檔複製至槽位[font_dialog]"+string(id.select_previous)+"!"
			break
		case "str_save_options_message_moved":
			result="[scale,2][font_chs]已將[font_dialog]"+string(id.slot_previous)+"[font_chs]號存檔移動至槽位[font_dialog]"+string(id.select_previous)+"!"
			break
		case "str_save_options_message_deleted":
			result="[scale,2][font_chs]已刪除[font_dialog]"+string(id.slot_previous)+"[font_chs]號存檔[font_dialog]![font_chs]"
			break
		case "str_save_options_copy_to":
			result="複製至"
			break
		case "str_save_options_move_to":
			result="移動至"
			break
		case "str_save_options_delete":
			result="刪除"
			break
		case "str_save_options_confirm_back":
			result="確認並返回"
			break
		case "str_save_options_warning_overwrite":
			result="{color `red`}(你確定嗎? 這將會覆蓋你的舊存檔檔案!)"
			break
		case "str_save_options_warning_delete":
			result="{color `red`}(你確定嗎? 這將會「永久」刪除你的存檔檔案!)"
			break
		case "str_gameover":
			result="{color `white`}{speed 5}{font 0}{scale 2}{speed 8}{voice 1}保持你的決心...&& {choice 0}重試     {choice 1}放棄{instant false}{choice `CHOICE`}{pause}{choice_retry}{end}"
			break
		case "str_gameover_window":
			result="保持你的決心..."
			break
		case "str_gameover_file":
			result="你沒有存檔，你已被送回菜單。"
			break
		case "str_chest":
			result="* (這是個箱子。){sleep 15}&* (你要使用嗎? ){sleep 15}{ui_font `font_chs`}{ui_choice 2}{ui_choice1 `是`}{ui_choice2 `否`}{pause}{choice_box}{end}"
			break
		case "str_ui_box_inventory":
			result="{font 0}物品欄"
			break
		case "str_ui_box_box":
			result="{font 0}箱子"
			break
		case "str_ui_box_finish":
			result="{font 0}按下 [X] 以完成"
			break
		case "str_ui_esc":
			result="{font 0}返回&回到菜單&退出遊戲"
			break
		case "str_ui_esc_confirm":
			result="[scale,2][font_chs]你確定嗎[font_dialog]?[font_chs]\n[font_dialog][[Z/Enter][font_chs]來確定\n[font_dialog][[X/Shift][font_chs]來取消"
			break
		case "str_ui_menu":
			result="{space_y 2}"+(Item_GetNumber()<=0 ? "{color_text `gray`}" : "")+"{font 0}物品"+(Item_GetNumber()<=0 ? "{color_text `white`}" : "")+"&"+"{font 0}統計"+(Phone_GetNumber()>0 ? "&"+"電話" : "")
			break
		case "str_ui_menu_item_use":
			result="{font 0}使用"
			break
		case "str_ui_menu_item_info":
			result="{font 0}說明"
			break
		case "str_ui_menu_item_drop":
			result="{font 0}丟棄"
			break
		case "str_ui_menu_stat_none":
			result="無"
			break
		case "str_ui_menu_stat_0":
			result="{font 0}\"{insert NAME}\"{space_y -1}&&{space_y 0}{font 0}LV {insert LV}&HP {insert HP}/{insert HP_MAX}&&{font 0}攻擊:{font 0}{insert ATK}({insert ATK_ITEM})&{font 0}防禦:{font 0}{insert DEF}({insert DEF_ITEM}){space_y -1}&&{space_y 0}{font 0}武器:{insert WEAPON}&{font 0}護甲:{insert ARMOR}{space_y 4}&{space_y 0}{font 0}金錢:{font 0}{insert GOLD}"
			break
		case "str_ui_menu_stat_1":
			result="{font 0}EXP:{insert EXP}&{font 0}還差{font 0}:{insert EXP_NEXT}"
			break
		case "str_ui_menu_stat_1_kills":
			result="{space_y -1}&&{space_y 0}&{space_y 4}&{space_y 0}擊殺{font 0}:{insert KILLS}"
			break
		case "str_ui_save_slot":
			result="槽位"
			break
		case "str_ui_save_save":
			result="{font 0}儲存"
			break
		case "str_ui_save_overwrite":
			result="{font 0}覆蓋"
			break
		case "str_ui_save_return":
			result="{font 0}返回"
			break
		case "str_ui_save_saved":
			result="{font 0}檔案已儲存"
			break
		case "str_ui_save_overwrited":
			result="{font 0}檔案已覆蓋。"
			break
		case "str_battle_spare":
			result="* 饒恕"
			break
		case "str_battle_flee":
			result="* 逃跑"
			break
		case "str_battle_won":
			result="{font 0}* 你贏了!&* 你獲得了 {insert EXP} EXP 和 {insert GOLD} 金錢。"
			break
		case "str_battle_won_lv":
			result="&"+"{font 0}* 你的 LOVE 增加了。"
			break
		case "str_battle_ran":
			result=choose("* 逃跑了...","* 我要走了。","* 我還有事要做。","* 別拖我的後腿。")
			break
		case "str_battle_ran_with":
			result="* 帶着 {insert EXP} EXP 和 {insert GOLD} 金錢逃跑了。"
			break
		case "str_battle_secondary_use":
			result="使用"
			break
		case "str_battle_secondary_info":
			result="說明"
			break
		case "str_battle_secondary_drop":
			result="丟棄"
			break
		case "str_shop_menu":
			result="  購買&  售賣&  聊天&  退出"
			break
		case "str_shop_exit":
			result="退出"
			break
		case "str_shop_buying_0":
			result="用"
			break
		case "str_shop_buying_1":
			result="G來&購買嗎?& 是& 否"
			break
		case "str_shop_selling_0":
			result="用"+string(Item_GetSellGold(Item_Get(id._index)))+"G來賣出嗎?&&"
			break
		case "str_shop_selling_1":
			result="  是                   否"
			break
		case "str_water_effect_border":
			result="由於水效果的一個Bug, &邊框已被關閉。"
			break
		case "str_space_effect_fps":
			result="由於幀數過低, 星空背景已被移除"
			break
		case "str_credits_title":
			result="{scale 3}{instant true}鳴謝名單"
			break
		case "str_credits_hint":
			result="{scale 2}{instant true}{color `gray`}[使用方向鍵來翻頁]&[按下 X 或 Shift 來返回]"
			break
		case "str_credits_page":
			result="{scale 2}{instant true}{color `gray`}<{color `white`}第"+string(id.page+1)+"/4頁>"
			break
		case "str_credits0":
			result="{font 1}{scale 2}{speed 1}{instant true}UndergameEngine By 憨憨羊の宇航鴿鴿&UNDERTALE Engine By 糖萌蘆&GameMaker By YoyoGames&&藍魂和板子和骨頭By 1個渣渣&星空背景着色器By Kali&商店By不會起名的一杯猹 \\& 1個渣渣&開發者控制臺By DaveTech&移動端控制By Darknslim \\& 南省Crosu&Scribble \\& Input \\& Bulb \\& Coroutines&By Juju Adams"
			break
		case "str_credits1":
			result="{font 1}{scale 2}{speed 1}{instant true}字體使用&Determination Sans/Mono,&Mars Needs Cunnilingus,Papyrus&By Toby Fox&宋體By 北京中易中標電子信息技術有限公司&方正少兒GBK、方正卡通 By 方正字庫&Comic Sans, Dotumche By Microsoft&GNU Unifont By Roman Czyborra"
			break
		case "str_credits2":
			result="{font 1}{scale 2}{speed 1}{instant true}異形框&整合By 1個渣渣&繪製在減框上面的背景效果By Siki&減框原理+初步實現By穹c啋f汾&加框原理+完全實現代碼的UTE移植By奇跡丶零& (原代碼來自Gitee的jkjkil4) &測試By Sanesss等人"
			break
		case "str_credits3":
			result="{font 1}{scale 2}{speed 1}{instant true}特別感謝&&Cxx_w&Obbligato_Mayse&拼圖方塊&LiarOnce&星雲uwu"
			break
		case "str_game_selection_hint_shop":
			result="[font_dialog][scale,2]([font_chs]商店[font_dialog])"
			break
		case "str_game_selection_hint_minigames":
			result="[font_menu][scale,2]([font_chs]小遊戲[font_menu] "+string(obj_game_selection.choice-(obj_game_selection.choice_mg-1))+"/"+string(obj_game_selection.choice_max-obj_game_selection.choice_mg+1)+")"
			break
		case "str_game_selection_hint_battles":
			result="[font_menu][scale,2]([font_chs]戰鬥[font_menu] "+string(obj_game_selection.choice+1)+"/"+string(obj_game_selection.choice_mg)+")"
			break
		case "str_game_selection_quit":
			result="[scale,2][font_chs]退出\n[font_dialog][scale,1](X/Shift)"
			break
		case "str_game_selection_intro":
			result="開頭"
			break
		case "str_game_selection_corridor":
			result="長廊"
			break
		case "str_game_selection_phase1":
			result="第1階段"
			break
		case "str_game_selection_phase2":
			result="第2階段"
			break
		case "str_game_selection_phase3":
			result="第3階段"
			break
		case "str_game_selection_phase4":
			result="第4階段"
			break
		case "str_game_selection_phase5":
			result="第5階段"
			break
		case "str_game_selection_start":
			result="\n[[Z/Enter][font_chs]或者使用光標點擊來開始"
			break
		case "str_game_selection_not_available":
			result="\n[font_chs]尚未開放"
			break
		case "str_game_selection_shop":
			result="[font_chs]商店"
			break
#endregion
#region 房間名
	case "str_room_lobby":
		result="大廳"
		break
#endregion
#region 物品
	case "str_item_info_full":
		result="{color `lime`}+{font 0}滿{font 1}HP"
		break
	case "str_item_tml_name":
		result="糖萌蘆"
		break
	case "str_item_tml_use":
		result="* 你吃了{color `yellow`}糖萌蘆{color `white`}。&{sleep 15}* UNDERTALE Engine永遠滴神!&{sleep 15}* 你的HP已滿!"
		break
	case "str_item_tml_info":
		result="* {color `yellow`}糖萌蘆{color `white`}&{sleep 20}* UNDERTALE Engine的作者。&{sleep 20}* 可以讓你的HP回滿。{pause}{clear}* 記住 是糖萌(meng)蘆{sleep 20}&* 不是糖葫(hu)蘆"
		break
	case "str_item_tml_drop":
		result="* 你扔掉了{color `yellow`}糖萌蘆{color `white`}。"
		break
	case "str_item_yuhang_name":
		result="憨憨羊の宇航鴿鴿"
		break
	case "str_item_yuhang_name_short":
		result="宇航"
		break
	case "str_item_yuhang_use":
		result="* 你尋求遊戲作者的幫助。{pause}{clear}* 你宇航大跌把你業報去了然後給你&  回滿了血然後跑路了。"
		break
	case "str_item_yuhang_info":
		result="* 憨憨羊の宇航鴿鴿{sleep 15}&* 這個遊戲的作者。{sleep 15}&* 就是個寄吧。"
		break
	case "str_item_yuhang_drop":
		result="* 你宇航大跌陶藝了。"
		break
	case "str_item_apple_name":
		result="蘋果"
		break
	case "str_item_apple_use":
		result="* 一天一蘋果, 醫生遠離我。&{sleep 20}* 你恢復了40點HP。"
		break
	case "str_item_apple_info":
		result="* 蘋果&{sleep 20}* 一天一蘋果, 醫生遠離我。&{sleep 20}* 可以恢復40點HP。"
		break
	case "str_item_apple_drop":
		result="* 你扔掉了蘋果。"
		break
	case "str_item_cake_name":
		result="蛋糕"
		break
	case "str_item_cake_use":
		result="* 你吃掉了蛋糕。&{sleep 20}* 你的HP已滿!"
		break
	case "str_item_cake_info":
		result="* 蛋糕&{sleep 20}* 一個美味的蛋糕。&{sleep 20}* 可以讓你的HP回滿。"
		break
	case "str_item_cake_drop":
		result="* 你扔掉了蛋糕。"
		break
	case "str_item_knife_name":
		result="真正的刀"
		break
	case "str_item_locket_name":
		result="掛墜盒"
		break
	case "str_item_noodles_name":
		result="方便麵"
		break
	case "str_item_noodles_use":
		result="* 生吃更好。{sleep 15}&* 你恢復了90點HP。"
		break
	case "str_item_shield_name":
		result="盾"
		break
	case "str_item_shield_item_info":
		result="護甲"
		break
	case "str_item_shield_shop_desc":
		result="盾&可以在戰鬥&中按住[空白鍵]&來使用"
		break
	case "str_item_shield_use":
		result="* 裝備了盾。"
		break
	case "str_item_shield_info":
		result="* 盾{sleep 15}&* 在戰鬥中按住空白鍵可以使用"
		break
	case "str_item_shield_drop":
		result="* 你扔掉了盾。"
		break
	case "str_item_steak_name":
		result="臉型牛排"
		break
	case "str_item_steak_name_short_serious":
		result="牛排"
		break
	case "str_item_steak_use":
		result="* 你吃了臉型牛排。{sleep 15}&* 你恢復了60點HP。"
		break
#endregion
#region 戰鬥
		case "str_battle_act_check":
			result="查看"
			break
		case "str_battle_act_check_info":
			result="查看敵人數據"
			break
		case "str_battle_act_talk":
			result="交談"
			break
		case "str_battle_act_talk_info":
			result="與敵人交談"
			break
		case "str_battle_act_flirt":
			result="調情"
			break
		case "str_battle_act_flirt_info":
			result="調情敵人"
			break
		case "str_battle_act_pray":
			result="祈禱"
			break
		case "str_battle_act_pray_info":
			result="清除業報"
			break
		case "str_battle_act_pray_menu_dialog":
			result="* 你默念出禱告詞。{sleep 20}&* 你的業報被清除!"
			break
		case "str_battle_act_heal":
			result="治療"
			break
		case "str_battle_act_heal_info":
			result="{color `lime`}+滿HP"
			break
#endregion
		case "str_room_lobby_save":
			result="{audio_play `snd_item_heal`}* 看見這個空蕩蕩的大廳...{pause}{clear}* 你充滿了決心!{pause}{clear}{heal_hp 9999999999}* (HP完全恢復了。){pause}{ui_save}{end}"
			break
	}
	return result
}
