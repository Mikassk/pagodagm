/// @description

draw_self();

if(sprite_exists(mask_index))
{
	draw_sprite_ext(mask_index, 0, x, y, image_xscale , image_yscale, image_angle, image_blend, image_alpha);
}

draw_text(x,y+20,contsolta);
draw_text(x,y+40,soltar);
draw_text(x,y+60,teclaanterior);
draw_text(x,y+80,spawna);