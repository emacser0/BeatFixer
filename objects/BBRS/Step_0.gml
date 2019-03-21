/// @description ZInsert description here
camera_width = camera_get_view_width(view_camera[0])
camera_height = camera_get_view_height(view_camera[0])
camera_set_view_pos(view_camera[0],
	                    clamp(Player.x - 0.25 * camera_width - 64,0,room_width - camera_width),
						clamp(Player.y - 0.25 * camera_height - 64,0,room_height - camera_height))
target_width = ViewWidthDefault * ZoomRate
target_height = ViewHeightDefault * ZoomRate
if(camera_width < target_width)
{
	if(target_width - camera_width <= ZoomOutSpeed)
	{
		camera_set_view_size(view_camera[0],target_width, target_height)
	}
	else
	{
		camera_set_view_size(view_camera[0],
	                     camera_width + ZoomOutSpeed * camera_width / camera_height,
						 camera_height + ZoomOutSpeed)
	}
}
else if(camera_width > target_width)
{
	if(camera_width - target_width <= ZoomInSpeed)
	{
			camera_set_view_size(view_camera[0],target_width, target_height)
	}
	else
	{
		camera_set_view_size(view_camera[0],
		                     camera_width - ZoomInSpeed * camera_width / camera_height,
		                     camera_height - ZoomInSpeed)
	}
}
BBRSBase()