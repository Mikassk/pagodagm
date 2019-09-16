/// @description 

draw_self();

draw_set_halign(alinhamentoX);
draw_set_valign(fa_middle);

draw_set_font(fnt)

draw_set_colour(cor);

if(!inputText)
{
	if(alinhamentoX == fa_left)
	{
		draw_text(x + espacamentoX, y + (sprite_height / 2), texto);
	}
	else if(alinhamentoX == fa_right)
	{
		draw_text(x + sprite_width - espacamentoX, y + (sprite_height / 2), texto);
	}
	else
	{
		if(alinhamentoX == fa_center)
		{
			draw_text(x + (sprite_width / 2), y + (sprite_height / 2), texto);
		}
	}
}