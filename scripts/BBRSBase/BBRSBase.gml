with(BBRS)
{
	if(keyboard_check_pressed(ord("Q")))
	{
		if(!SystemEnabled && !CoolDown)
		{
			BBRSEnable()
		}
		else if(!CoolDown)
		{
			BBRSDisable()
		}
	}
	
	// if toogle option activated skip it
	//if(keyboard_check_released(ord("A")) && SystemEnabled && !CoolDown)
	//{
	//	BBRSDisable()
	//}
	if(SystemEnabled && !CoolDown)
	{
		if(BBRSCheckNoteRange())
		{
			BBRSMoveBioBeat()
		}
		else
		{
			BBRSDisable()
		}
	}
	if(CoolDown>0) {
		CoolDown--
	}
}