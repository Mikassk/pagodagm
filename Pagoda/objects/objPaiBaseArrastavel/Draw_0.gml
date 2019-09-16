/// @description 

if(sprite_exists(sprite_index))
{
	draw_sprite_ext(sprite_index, image_index, x, y, image_xscale, image_yscale, image_angle, image_blend, 0.5);
}

if(sprite_exists(_spr))
{
	draw_sprite_ext(_spr, 0, x, y, imageXScale, imageYScale, imageAngle, c_white, 0.5);
}