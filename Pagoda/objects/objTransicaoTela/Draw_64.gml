/// @description 

draw_set_alpha(alpha);

draw_set_color(cor);

if(view_enabled)
{
	camera = view_camera;
	
	_width = camera_get_view_width(camera);
	_height = camera_get_view_height(camera);
}
else
{
	_width = room_width;
	_height = room_height;
}

	draw_rectangle(x, y, _width, _height, 0);

	draw_set_alpha(1);

