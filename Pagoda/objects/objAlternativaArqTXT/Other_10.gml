/// @description Draw

event_inherited();

if(!correta)
{
	draw_set_colour(cor);
}
else
{
	draw_set_color(c_red);
}

draw_set_font(fnt14);
stringH = draw_text_justified(xstart + _x + (sprite_width / 2) + string_width(" "), (ystart + _y) - (sprite_height / 3), TAMANHO_TEXTO_ROOM, fnt14, textJustified);

//draw_set_color(0);
//draw_line(xstart + _x + (sprite_width / 2) + string_width(" "), ystart + _y, TAMANHO_TEXTO_ROOM, ystart + _y);

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

/*
draw_set_color(0);
draw_line(x - sprite_width / 2, y - sprite_height / 2, x - sprite_width / 2, y + sprite_height / 2);
draw_line(x + sprite_width / 2, y - sprite_height / 2, x + sprite_width / 2, y + sprite_height / 2);

draw_line(x - sprite_width / 2, y - sprite_height / 2, x + sprite_width / 2, y - sprite_height / 2);
draw_line(x - sprite_width / 2, y + sprite_height / 2, x + sprite_width / 2, y + sprite_height / 2);
*/