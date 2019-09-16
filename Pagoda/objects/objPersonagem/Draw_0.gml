/// @description

draw_self();

if(sprite_exists(mask_index))
{
	draw_sprite_ext(mask_index, 0, x, y, image_xscale , image_yscale, image_angle, image_blend, image_alpha);
}