with(BBRS)
{
	BeatSymbolAngle += BeatSymbolAngleSpeed
	BBUIBackGround.x = Player.x
	BBUIBackGround.y = Player.y
	for(i=0;i<ds_list_size(NoteList);i++) {
	    NoteInstance = ds_list_find_value(NoteList,i)
		NoteInstance.x = Player.x + 11 + lengthdir_x(64, 40 * NoteTimingArray[i] + 110)
		NoteInstance.y = Player.y + 11 + lengthdir_y(64, 40 * NoteTimingArray[i] + 110)
	}
	BioBeatInstance.x = Player.x + lengthdir_x(64, BeatSymbolAngle)
	BioBeatInstance.y = Player.y + lengthdir_y(64, BeatSymbolAngle)
}