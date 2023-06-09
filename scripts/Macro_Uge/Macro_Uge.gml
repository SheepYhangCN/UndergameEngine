function Macro_Uge(){
	#macro LOCK_LANGUAGE -1//LANGUAGE.ENGLISH
	enum BULLET_TYPE{
		WHITE,
		BLUE,
		ORANGE,
		RED
	}
	enum GAME_MODE{
		NORMAL,
		EASY,
		HARD
	}
	enum LANGUAGE{
		ENGLISH,
		SCHINESE,
		
		MAX
	}
	enum BATTLE_BUTTON{
		FIGHT,
		ACT,
		ITEM,
		MERCY
	}
	enum BATTLE_DAMAGE{
		NONE=-1,
		MISS=-2,
		BLOCK=-3,
		NO_EFFECT=-4,
		PARRY=-5
	}
	enum SHOP{
		TEST
	}
	enum BATTLE{
		TEST,
		
		NUM
	}
}