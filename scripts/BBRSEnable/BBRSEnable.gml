with(BBRS)
{
	ZoomRate = ZoomMax
	SystemEnabled = true
	NoteHitCount = 0
	UIBackGroundInstance.visible = true
	BioBeatInstance.visible = true
	for(i=0;i<array_length_1d(NoteTimingArray);i++)
	{
		ds_list_add(NoteList,instance_create_layer(0,0,"UIInstanceLayer",BioNote))
	}
}