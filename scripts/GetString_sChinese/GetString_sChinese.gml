///@arg localization_id
function GetString_sChinese(){
	var lid=argument[0]
	var result="<Undefined String: "+lid+">"
	switch(lid){
#region 系统
		case "str_language_name":
			result="简体中文"
			break
		case "str_weekday0":
			result="周日"
			break
		case "str_weekday1":
			result="周一"
			break
		case "str_weekday2":
			result="周二"
			break
		case "str_weekday3":
			result="周三"
			break
		case "str_weekday4":
			result="周四"
			break
		case "str_weekday5":
			result="周五"
			break
		case "str_weekday6":
			result="周六"
			break
		case "str_easymode":
			result="[scale,2][font_chs]简单模式"
			break
		case "str_hardmode":
			result="[scale,2][font_chs]困难模式"
			break
		case "str_tas_hint":
			result="[scale,2][font_chs]变速模式\n[font_dialog]([font_chs]速度: [font_dialog]"+string(room_speed/60)+"x/"+string(room_speed)+"fps)"
			break
		case "str_tas_warning":
			result="[c_red]警告[font_dialog]! [font_chs]变速模式是一个实验性功能[font_dialog]! [font_chs]\n可能会引起某些问题[font_dialog]! [font_chs]\n\n[c_orange]左[font_dialog]Alt - [font_chs]减少[font_dialog]FPS[font_chs]\n右[font_dialog]Alt - [font_chs]增加[font_dialog]FPS"
			break
		case "str_restarting":
			result="重启中..."
			break
		case "str_vape_installed":
			result="Vape v114.514 已注入"
			break
		case "str_vape_uninstalled":
			result="Vape v114.514 已卸载"
			break
		case "str_mobile_control_hint":
			result="按下返回键(移动端)或退格键&(桌面端)来切换移动端控制。"
			break
		case "str_mobile_control_current_crosu":
			result="当前: 移动端控制By南省Crosu"
			break
		case "str_mobile_control_current_darknslim":
			result="当前: 移动端控制By Darknslim"
			break
		case "str_mobile_control_current_off":
			result="当前: 已关闭"
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
			result="已检测到控制器。&你想使用哪种方式游玩?"
			break
		case "str_controller_keyboard":
			result="键盘"
			break
		case "str_controller_n":
			result="手柄 (任天堂标准)"
			break
		case "str_controller_x":
			result="手柄 (Xbox标准)"
			break
		case "str_warning_title":
			result="{font 0}{scale 3}{instant true}{color `red`}光敏性癫痫警告"
			break
		case "str_warning":
			result="{font 0}{scale 2}{instant true}本游戏含有闪烁的画面等&会引起光敏性癫痫的画面效果。&对于有光敏性癫痫的患者, &请关闭游戏或做好充足准备。&对于未查明有光敏性癫痫的玩家, &如果出现头晕目眩、视力模糊、&眼睛或面部抽搐、四肢抽搐、迷失方向感、&精神错乱或短暂的意识丧失等症状, &请立即关闭游戏并求助家属或医生。"
			break
		case "str_warning_press":
			result="{font 0}{scale 2}{instant true}{color `gray`}[按下 Z 或 Enter]"
			break
		case "str_menu_continue":
			result="{font 0}继续"
			break
		case "str_menu_reset":
			result="{font 0}重置"
			break
		case "str_menu_begin":
			result="{font 0}开始游戏"
			break
		case "str_menu_settings":
			result="{font 0}设置"
			break
		case "str_menu_credits":
			result="{font 0}鸣谢"
			break
		case "str_menu_saveoptions":
			result="{font 0}存档选项"
			break
		case "str_menu_empty":
			result="{font 0}空"
			break
		case "str_menu_instruction":
			result="{font 1}{color_text `gray_light`} --- 按键 ---{space_y -1}&{space_y 2}[F1] - 重启&[F2] - 重启房间&[F4] - 全屏&[X/Shift] - 奔跑(主世界)&[X/Shift] - 减速(战斗中)&[Insert] - 调试模式&按下返回键(退格)来开关&移动端控制器"
			break
		case "str_menu_naming_title":
			result="{font 0}请输入你的名字。"
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
			result="是这个名字没错吗?"
			break
		case "str_menu_naming_check_aaaaaa":
			result="不是很有创造性...?"
			break
		case "str_border_simple":
			result="简单"
			break
		case "str_border_sepia":
			result="简约"
			break
		case "str_border_rad":
			result="精彩"
			break
		case "str_border_dog":
			result="狗"
			break
		case "str_settings_on":
			result="开"
			break
		case "str_settings_off":
			result="关"
			break
		case "str_settings_none":
			result="无"
			break
		case "str_settings_n/a":
			result="{color `red`}不可用"
			break
		case "str_settings_mode_easy":
			result="{color `lime`}简单"
			break
		case "str_settings_mode_normal":
			result="普通"
			break
		case "str_settings_mode_hard":
			result="{color `red`}困难"
			break
		case "str_settings_season_spring":
			result="{color `gray`}{scale 2}{instant true}{font 1}春天来了&该上学了"
			break
		case "str_settings_season_summer":
			result="{color `gray`}{scale 2}{instant true}{font 1}我想像那&太阳一样&散发光芒"
			break
		case "str_settings_season_autumn":
			result="{color `gray`}{scale 2}{instant true}{font 1}扫走一片树叶&扫走一片烦恼"
			break
		case "str_settings_season_winter":
			result="{color `gray`}{scale 2}{instant true}{font 1}外面虽冷&但你内心&仍存温暖"
			break
		case "str_settings_language":
			result="语言"
			break
		case "str_settings_language_locked":
			result="语言 (已锁定)"
			break
		case "str_settings_window_size":
			result="窗口大小"
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
			result="边框"
			break
		case "str_settings_save_back":
			result="保存并返回"
			break
		case "str_save_options_message_copied":
			result="[scale,2][font_chs]已将[font_dialog]"+string(Flag_GetSaveSlot())+"[font_chs]号存档复制至槽位[font_dialog]"+string(id.select_previous)+"!"
			break
		case "str_save_options_message_moved":
			result="[scale,2][font_chs]已将[font_dialog]"+string(id.slot_previous)+"[font_chs]号存档移动至槽位[font_dialog]"+string(id.select_previous)+"!"
			break
		case "str_save_options_message_deleted":
			result="[scale,2][font_chs]已删除[font_dialog]"+string(id.slot_previous)+"[font_chs]号存档[font_dialog]![font_chs]"
			break
		case "str_save_options_copy_to":
			result="复制至"
			break
		case "str_save_options_move_to":
			result="移动至"
			break
		case "str_save_options_delete":
			result="删除"
			break
		case "str_save_options_confirm_back":
			result="确认并返回"
			break
		case "str_save_options_warning_overwrite":
			result="{color `red`}(你确定吗? 这将会覆盖你的旧存档文件!)"
			break
		case "str_save_options_warning_delete":
			result="{color `red`}(你确定吗? 这将会「永久」删除你的存档文件!)"
			break
		case "str_gameover":
			result="{color `white`}{speed 5}{font 0}{scale 2}{speed 8}{voice 1}保持你的决心...&& {choice 0}重试     {choice 1}放弃{instant false}{choice `CHOICE`}{pause}{choice_retry}{end}"
			break
		case "str_gameover_window":
			result="保持你的决心..."
			break
		case "str_gameover_file":
			result="你没有存档，你已被送回菜单。"
			break
		case "str_chest":
			result="* (这是个箱子。){sleep 15}&* (你要使用吗? ){sleep 15}{ui_font `font_chs`}{ui_choice 2}{ui_choice1 `是`}{ui_choice2 `否`}{pause}{choice_box}{end}"
			break
		case "str_ui_box_inventory":
			result="{font 0}物品栏"
			break
		case "str_ui_box_box":
			result="{font 0}箱子"
			break
		case "str_ui_box_finish":
			result="{font 0}按下 [X] 以完成"
			break
		case "str_ui_esc":
			result="{font 0}返回&回到菜单&退出游戏"
			break
		case "str_ui_esc_confirm":
			result="[scale,2][font_chs]你确定吗[font_dialog]?[font_chs]\n[font_dialog][[Z/Enter][font_chs]来确定\n[font_dialog][[X/Shift][font_chs]来取消"
			break
		case "str_ui_menu":
			result="{space_y 2}"+(Item_GetNumber()<=0 ? "{color_text `gray`}" : "")+"{font 0}物品"+(Item_GetNumber()<=0 ? "{color_text `white`}" : "")+"&"+"{font 0}统计"+(Phone_GetNumber()>0 ? "&"+"电话" : "")
			break
		case "str_ui_menu_item_use":
			result="{font 0}使用"
			break
		case "str_ui_menu_item_info":
			result="{font 0}说明"
			break
		case "str_ui_menu_item_drop":
			result="{font 0}丢弃"
			break
		case "str_ui_menu_stat_none":
			result="无"
			break
		case "str_ui_menu_stat_0":
			result="{font 0}\"{insert NAME}\"{space_y -1}&&{space_y 0}{font 0}LV {insert LV}&HP {insert HP}/{insert HP_MAX}&&{font 0}攻击:{font 0}{insert ATK}({insert ATK_ITEM})&{font 0}防御:{font 0}{insert DEF}({insert DEF_ITEM}){space_y -1}&&{space_y 0}{font 0}武器:{insert WEAPON}&{font 0}护甲:{insert ARMOR}{space_y 4}&{space_y 0}{font 0}金钱:{font 0}{insert GOLD}"
			break
		case "str_ui_menu_stat_1":
			result="{font 0}EXP:{insert EXP}&{font 0}还差{font 0}:{insert EXP_NEXT}"
			break
		case "str_ui_menu_stat_1_kills":
			result="{space_y -1}&&{space_y 0}&{space_y 4}&{space_y 0}击杀{font 0}:{insert KILLS}"
			break
		case "str_ui_save_slot":
			result="槽位"
			break
		case "str_ui_save_save":
			result="{font 0}保存"
			break
		case "str_ui_save_overwrite":
			result="{font 0}覆盖"
			break
		case "str_ui_save_return":
			result="{font 0}返回"
			break
		case "str_ui_save_saved":
			result="{font 0}档案已储存"
			break
		case "str_ui_save_overwrited":
			result="{font 0}档案已覆盖。"
			break
		case "str_battle_spare":
			result="* 饶恕"
			break
		case "str_battle_flee":
			result="* 逃跑"
			break
		case "str_battle_won":
			result="{font 0}* 你赢了!&* 你获得了 {insert EXP} EXP 和 {insert GOLD} 金钱。"
			break
		case "str_battle_won_lv":
			result="&"+"{font 0}* 你的 LOVE 增加了。"
			break
		case "str_battle_ran":
			result=choose("* 逃跑了...","* 我要走了。","* 我还有事要做。","* 别拖我的后腿。")
			break
		case "str_battle_ran_with":
			result="* 带着 {insert EXP} EXP 和 {insert GOLD} 金钱逃跑了。"
			break
		case "str_battle_secondary_use":
			result="使用"
			break
		case "str_battle_secondary_info":
			result="说明"
			break
		case "str_battle_secondary_drop":
			result="丢弃"
			break
		case "str_shop_menu":
			result="  购买&  售卖&  聊天&  退出"
			break
		case "str_shop_exit":
			result="退出"
			break
		case "str_shop_buying_0":
			result="用"
			break
		case "str_shop_buying_1":
			result="G来&购买吗?& 是& 否"
			break
		case "str_shop_selling_0":
			result="用"+string(Item_GetSellGold(Item_Get(id._index)))+"G来卖出吗?&&"
			break
		case "str_shop_selling_1":
			result="  是                   否"
			break
		case "str_water_effect_border":
			result="由于水效果的一个Bug, &边框已被关闭。"
			break
		case "str_space_effect_fps":
			result="由于帧数过低, 星空背景已被移除"
			break
		case "str_credits_title":
			result="{scale 3}{instant true}鸣谢名单"
			break
		case "str_credits_hint":
			result="{scale 2}{instant true}{color `gray`}[使用方向键来翻页]&[按下 X 或 Shift 来返回]"
			break
		case "str_credits_page":
			result="{scale 2}{instant true}{color `gray`}<{color `white`}第"+string(id.page+1)+"/4页>"
			break
		case "str_credits0":
			result="{font 1}{scale 2}{speed 1}{instant true}UndergameEngine By 憨憨羊の宇航鸽鸽&UNDERTALE Engine By 糖萌芦&GameMaker By YoyoGames&&蓝魂和板子和骨头By 1个渣渣&星空背景着色器By Kali&商店By不会起名的一杯猹 \\& 1个渣渣&开发者控制台By DaveTech&移动端控制By Darknslim \\& 南省Crosu&Scribble \\& Input \\& Bulb \\& Coroutines&By Juju Adams"
			break
		case "str_credits1":
			result="{font 1}{scale 2}{speed 1}{instant true}字体使用&Determination Sans/Mono,&Mars Needs Cunnilingus,Papyrus&By Toby Fox&宋体By 北京中易中标电子信息技术有限公司&方正少儿GBK、方正卡通 By 方正字库&Comic Sans, Dotumche By Microsoft&GNU Unifont By Roman Czyborra"
			break
		case "str_credits2":
			result="{font 1}{scale 2}{speed 1}{instant true}异形框&整合By 1个渣渣&绘制在减框上面的背景效果By Siki&减框原理+初步实现By穹c啋f汾&加框原理+完全实现代码的UTE移植By奇迹丶零& (原代码来自Gitee的jkjkil4) &测试By Sanesss等人"
			break
		case "str_credits3":
			result="{font 1}{scale 2}{speed 1}{instant true}特别感谢&&Cxx_w&Obbligato_Mayse&拼图方块&LiarOnce&星云uwu"
			break
		case "str_game_selection_hint_shop":
			result="[font_dialog][scale,2]([font_chs]商店[font_dialog])"
			break
		case "str_game_selection_hint_minigames":
			result="[font_menu][scale,2]([font_chs]小游戏[font_menu] "+string(obj_game_selection.choice-(obj_game_selection.choice_mg-1))+"/"+string(obj_game_selection.choice_max-obj_game_selection.choice_mg+1)+")"
			break
		case "str_game_selection_hint_battles":
			result="[font_menu][scale,2]([font_chs]战斗[font_menu] "+string(obj_game_selection.choice+1)+"/"+string(obj_game_selection.choice_mg)+")"
			break
		case "str_game_selection_quit":
			result="[scale,2][font_chs]退出\n[font_dialog][scale,1](X/Shift)"
			break
		case "str_game_selection_intro":
			result="[font_chs]开头"
			break
		case "str_game_selection_corridor":
			result="[font_chs]长廊"
			break
		case "str_game_selection_phase1":
			result="[font_chs]第[font_menu]1[font_chs]阶段"
			break
		case "str_game_selection_phase2":
			result="[font_chs]第[font_menu]2[font_chs]阶段"
			break
		case "str_game_selection_phase3":
			result="[font_chs]第[font_menu]3[font_chs]阶段"
			break
		case "str_game_selection_phase4":
			result="[font_chs]第[font_menu]4[font_chs]阶段"
			break
		case "str_game_selection_phase5":
			result="[font_chs]第[font_menu]5[font_chs]阶段"
			break
		case "str_game_selection_start":
			result="\n[[Z/Enter][font_chs]或者使用光标点击来开始"
			break
		case "str_game_selection_not_available":
			result="\n[font_chs]尚未开放"
			break
		case "str_game_selection_shop":
			result="[font_chs]商店"
			break
		case "str_game_selection_subtitle_on":
			result="[font_chs]开启字幕"
			break
		case "str_game_selection_subtitle_off":
			result="[font_chs]关闭字幕"
			break
#endregion
#region 房间名
	case "str_room_lobby":
		result="大厅"
		break
#endregion
#region 物品
	case "str_item_info_full":
		result="{color `lime`}+{font 0}满{font 1}HP"
		break
	case "str_item_tml_name":
		result="糖萌芦"
		break
	case "str_item_tml_use":
		result="* 你吃了{color `yellow`}糖萌芦{color `white`}。&{sleep 15}* UNDERTALE Engine永远滴神!&{sleep 15}* 你的HP已满!"
		break
	case "str_item_tml_info":
		result="* {color `yellow`}糖萌芦{color `white`}&{sleep 20}* UNDERTALE Engine的作者。&{sleep 20}* 可以让你的HP回满。{pause}{clear}* 记住 是糖萌(meng)芦{sleep 20}&* 不是糖葫(hu)芦"
		break
	case "str_item_tml_drop":
		result="* 你扔掉了{color `yellow`}糖萌芦{color `white`}。"
		break
	case "str_item_yuhang_name":
		result="憨憨羊の宇航鸽鸽"
		break
	case "str_item_yuhang_name_short":
		result="宇航"
		break
	case "str_item_yuhang_use":
		result="* 你寻求游戏作者的帮助。{pause}{clear}* 你宇航大跌把你业报去了然后给你&  回满了血然后跑路了。"
		break
	case "str_item_yuhang_info":
		result="* 憨憨羊の宇航鸽鸽{sleep 15}&* 这个游戏的作者。{sleep 15}&* 就是个寄吧。"
		break
	case "str_item_yuhang_drop":
		result="* 你宇航大跌陶艺了。"
		break
	case "str_item_apple_name":
		result="苹果"
		break
	case "str_item_apple_use":
		result="* 一天一苹果, 医生远离我。&{sleep 20}* 你恢复了40点HP。"
		break
	case "str_item_apple_info":
		result="* 苹果&{sleep 20}* 一天一苹果, 医生远离我。&{sleep 20}* 可以恢复40点HP。"
		break
	case "str_item_apple_drop":
		result="* 你扔掉了苹果。"
		break
	case "str_item_cake_name":
		result="蛋糕"
		break
	case "str_item_cake_use":
		result="* 你吃掉了蛋糕。&{sleep 20}* 你的HP已满!"
		break
	case "str_item_cake_info":
		result="* 蛋糕&{sleep 20}* 一个美味的蛋糕。&{sleep 20}* 可以让你的HP回满。"
		break
	case "str_item_cake_drop":
		result="* 你扔掉了蛋糕。"
		break
	case "str_item_knife_name":
		result="真正的刀"
		break
	case "str_item_locket_name":
		result="挂坠盒"
		break
	case "str_item_noodles_name":
		result="方便面"
		break
	case "str_item_noodles_use":
		result="* 生吃更好。{sleep 15}&* 你恢复了90点HP。"
		break
	case "str_item_shield_name":
		result="盾"
		break
	case "str_item_shield_item_info":
		result="护甲"
		break
	case "str_item_shield_shop_desc":
		result="盾&可以在战斗&中按住[空格]&来使用"
		break
	case "str_item_shield_use":
		result="* 装备了盾。"
		break
	case "str_item_shield_info":
		result="* 盾{sleep 15}&* 在战斗中按住空格可以使用"
		break
	case "str_item_shield_drop":
		result="* 你扔掉了盾。"
		break
	case "str_item_steak_name":
		result="脸型牛排"
		break
	case "str_item_steak_name_short_serious":
		result="牛排"
		break
	case "str_item_steak_use":
		result="* 你吃了脸型牛排。{sleep 15}&* 你恢复了60点HP。"
		break
#endregion
#region 战斗
		case "str_battle_act_check":
			result="查看"
			break
		case "str_battle_act_check_info":
			result="查看敌人数据"
			break
		case "str_battle_act_talk":
			result="交谈"
			break
		case "str_battle_act_talk_info":
			result="与敌人交谈"
			break
		case "str_battle_act_flirt":
			result="调情"
			break
		case "str_battle_act_flirt_info":
			result="调情敌人"
			break
		case "str_battle_act_pray":
			result="祈祷"
			break
		case "str_battle_act_pray_info":
			result="清除业报"
			break
		case "str_battle_act_pray_menu_dialog":
			result="* 你默念出祷告词。{sleep 20}&* 你的业报被清除!"
			break
		case "str_battle_act_heal":
			result="治疗"
			break
		case "str_battle_act_heal_info":
			result="{color `lime`}+满HP"
			break
#endregion
		case "str_room_lobby_save":
			result="{audio_play `snd_item_heal`}* 看见这个空荡荡的大厅...{pause}{clear}* 你充满了决心!{pause}{clear}{heal_hp 9999999999}* (HP完全恢复了。){pause}{ui_save}{end}"
			break
	}
	return result
}
