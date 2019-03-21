/// @description Insert description here
// You can write your code in this editor
SystemEnabled = false
UISizex = 128
UISizey = 128
UIBackGroundInstance = instance_create_layer(0, 0, "UIBackGroundLayer", BBUIBackGround)
BeatSymbol = HeartSprite
BeatSymbolSizex = 32
BeatSymbolSizey = 32
BeatSymbolAngle = 90
BeatSymbolAngleSpeed = 3
BioBeatInstance = instance_create_layer(0, 0, "UIInstanceLayer", BioBeat)
NoteTimingArray = [1,2,7,8]
NoteList = ds_list_create()
NoteHitList = ds_list_create()
CoolDownMax = 30
CoolDown = 0
ZoomMax = 0.75
ZoomDefault = 1
ZoomMin = 1.5
ZoomRate = 1
ZoomInSpeed = 50
ZoomOutSpeed = 15
ViewWidthDefault = camera_get_view_width(view_camera[0]);
ViewHeightDefault = camera_get_view_height(view_camera[0]);