with(BBRS)
{
	ZoomRate = ZoomDefault
	SystemEnabled = false
	BeatSymbolAngle = 90
	UIBackGroundInstance.visible = false
	BioBeatInstance.visible = false
	while(ds_list_size(NoteList))
	{
		instance_destroy(ds_list_find_value(NoteList,0))
		ds_list_delete(NoteList,0)
	}
	if(ds_list_size(NoteHitList) >= array_length_1d(NoteTimingArray))
	{
		Player_IncreaseRecoveryMultiplier()
	}
	else {
		Player_DecreaseRecoveryMultiplier()
	}
	ds_list_clear(NoteHitList)
	CoolDown = CoolDownMax
}