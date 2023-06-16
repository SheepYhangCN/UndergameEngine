if(Input_IsPressed(INPUT.CONFIRM)&&!pressed)
{
	pressed=true;
	Fader_Fade(0,1,60);
	alarm[0]=70;
}