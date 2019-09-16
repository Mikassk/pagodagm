/// @description

if(tipo != 3)
{
	draw_self();
}
else
{
	if(!lado)
	{
		draw_sprite_part(spr, 0, -left, 0, sprW, sprH, (_x - (sprW / 2)) + _xx, _y + _yy);
		draw_sprite_part(spr, 1, left, 0, sprW, sprH, (_x - (sprW / 2)) + _xx, _y + _yy);
	
		draw_sprite_part(spr, 0, sprW - left, 0, sprW, sprH, (_x - (sprW / 2)) + _xx, _y + _yy);
		draw_sprite_part(spr, 1, -sprW + left, 0, sprW, sprH, (_x - (sprW / 2)) + _xx, _y + _yy);
	}
	else
	{
		draw_sprite_part(spr, 0, -left, 0, sprW, sprH, (_x - (sprW / 2)) - _xx, _y + _yy);
		draw_sprite_part(spr, 1, left, 0, sprW, sprH, (_x - (sprW / 2)) - _xx, _y + _yy);
	
		draw_sprite_part(spr, 0, sprW - left, 0, sprW, sprH, (_x - (sprW / 2)) - _xx, _y + _yy);
		draw_sprite_part(spr, 1, -sprW + left, 0, sprW, sprH, (_x - (sprW / 2)) - _xx, _y + _yy);
	}
	
	draw_sprite_ext(sprite_index, image_index, x, y, image_xscale, image_yscale, image_angle, image_blend, image_alpha);
	draw_sprite_ext(sprite_index, image_index, x + (3 * sprite_width), y, image_xscale, image_yscale, image_angle, image_blend, image_alpha);
}

if(sprite_exists(mask_index))
{
	draw_sprite_ext(mask_index, image_index, x, y, image_xscale, image_yscale, image_angle, image_blend, image_alpha);
}