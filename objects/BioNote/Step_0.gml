/// @description Insert description here
// You can write your code in this editor
if(collision_circle(x,y,8,BioBeat,false,true) &&
   mouse_check_button_pressed(mb_left))
{
	isHitted = false
	for(i=0;i<ds_list_size(BBRS.NoteHitList);i++) {
		if(ds_list_find_value(BBRS.NoteHitList,i) == id) {
			isHitted = true
			break
		}
	}
	if(!isHitted) {
		ds_list_add(BBRS.NoteHitList, id)
	}
}
