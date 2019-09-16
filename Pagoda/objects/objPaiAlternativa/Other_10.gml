/// @description Draw

event_inherited();

if(marcada)
{
	if(sprite_exists(sprMarcada))
	{
	    draw_sprite_ext(sprMarcada, image_index, xstart + _x, ystart + _y, image_xscale, image_yscale, image_angle, image_blend, image_alpha);
	}
	else
	{
		draw_set_font(fnt20);
		draw_set_color($FFFFFF);
		
		draw_set_halign(fa_center);
		draw_set_valign(fa_middle);
		
		draw_text(xstart + _x, ystart + _y, "X");
	}
}