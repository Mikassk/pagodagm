/// @description 

if(font_exists(fnt))
{
	draw_set_font(fnt);
	
	draw_set_halign(fa_center);
	draw_set_valign(fa_middle);

	draw_text_outline(x, y, texto, $000000, (alpha / 3), 2);

	draw_set_color($FFFFFF);
	draw_set_alpha(alpha);

	draw_text(x, y, texto);

	draw_set_alpha(1);
}