window_set_caption("Warmtale")
global.battle=BATTLE.WARMA

headx = x+5
heady = y-102+(sin((animsin / 4)) / 1.5)
bodyx = x-2
bodyy = y-30+sin((animsin / 4))*1.5
legx = x
legy = y+50

with(battle_board_cover){if(Battle_GetState()!=BATTLE_STATE.IN_TURN&&up=0&&down=0&&left=0&&right=0){instance_destroy()}}