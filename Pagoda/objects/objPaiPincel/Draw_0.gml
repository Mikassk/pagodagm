/// @description 

if(sprite_exists(sprite_index))
{
	draw_self();
	
	draw_sprite_ext(sprite_index, 1, x, y, image_xscale, image_yscale, image_angle, cor, image_alpha);
}