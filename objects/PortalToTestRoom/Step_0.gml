/// @description Insert description here
// You can write your code in this editor
if(place_meeting(x,y,Player)) {
	room_goto(TargetRoom)
	Player.x = Targetx
	Player.y = Targety
	if(!Player.persistent) Player.persistent = true
}