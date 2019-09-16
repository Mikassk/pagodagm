/// @description Draw

draw_set_alpha(alpha);

_x = 0;
_y = 0;

if(desenhaFundo)
{
	draw_set_color($000000);
	
	if(view_enabled)
	{
		camera = view_camera;
		
		if(!drawGui)
		{
			_x = camera_get_view_x(camera);
			_y = camera_get_view_y(camera);
		}
			
		_width = camera_get_view_width(camera);
		_height = camera_get_view_height(camera);
	}
	else
	{
		_width = room_width;
		_height = room_height;
	}
		
	draw_rectangle(_x, _y, _width, _height, 0);
}
	
if(sprite_exists(sprite_index))
{
	draw_sprite_ext(sprite_index, pag, x + _x, y + _y, image_xscale, image_yscale, image_angle, image_blend, image_alpha);
}
	
draw_set_alpha(1);