/// @description

draw_self();
if(dano){
	image_blend = c_red;
	
}
else{
	image_blend = c_white;
}

if(sprite_exists(mask_index))
{
	//draw_sprite_ext(mask_index, 0, x, y, image_xscale , image_yscale, image_angle, image_blend, image_alpha);
}

//draw_text(x,y+20,contsolta);
//draw_text(x,y+40,move);
//draw_text(x,y+60,teste);
//draw_text(x,y+80,"vidas: " + string(VIDAS));