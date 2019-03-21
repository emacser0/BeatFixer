with(BBRS)
{
	draw_text(UIx, UIy + UISizey + 32, "BeatSymbolx = " + string(BeatSymbolx) + 
	" BeatSymboly = " + string(BeatSymboly))
	draw_text(UIx, UIy + UISizey + 64, "NoteCount = " + string(ds_list_size(NoteList)))
	draw_text(UIx, UIy + UISizey + 96, "NoteHitCount = " + string(ds_list_size(NoteHitList)))
	for(i=0;i<ds_list_size(NoteList);i++)
	{
		draw_text(UIx, UIy + UISizey + 128 + i*16, "NoteId[" + string(i) + "] = " + string(ds_list_find_value(NoteList,i).id))
	}
}