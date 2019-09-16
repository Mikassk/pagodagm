/// @description 

image_speed = 0;

speedScale = SPEED_SCALE;
speedAlpha = SPEED_ALPHA;

alpha = 0;

mode = choose("X", "Y", "XY");

desenhaFundo = 1;

_x = 0;
_y = 0;

pag = 0;
limitePag = sprite_get_number(sprite_index) - 1;

ajudaAnimada = 0;
pagAjudaAnimada = -1;

destroy = 0;

if(mode == "X")
{
	image_xscale = 0;
}
else if(mode == "Y")
{
	image_yscale = 0;
}
else
{
	//if(mode == "XY")
	{
		image_xscale = 0;
		image_yscale = 0;
	}
}

drawGui = 0;

alarm[0] = 1;

#endregion