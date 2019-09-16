/// @description Draw

if(sprite_exists(sprite_index))
{
	_x = 0;
	_y = 0;
	
	if(!drawGui)
	{
		if(view_enabled)
		{
			camera = view_camera;
		
			_x = camera_get_view_x(camera);
			_y = camera_get_view_y(camera);
		}
	}
	
	draw_sprite_ext(sprite_index, image_index, xstart + _x, ystart + _y, image_xscale, image_yscale, image_angle, image_blend, image_alpha);
}