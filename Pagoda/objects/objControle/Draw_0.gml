/// @description

draw_set_font(fnt20);
draw_set_color($FFFFFF);

_x = 0;
_y = 0;

if(view_enabled)
{
	camera = view_camera;
	
	_x = camera_get_view_x(camera);
	_y = camera_get_view_y(camera);
	
	draw_set_font(fnt14);
}

//draw_text(32 + _x, 32 + _y, "Pressed " + chr(34) + "Enter" + chr(34) + " for view_enabled");