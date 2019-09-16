/// @description 

if(image_xscale < 1 || image_yscale < 1)
{
	alarm[0] = 1;
	
	image_xscale += speedScale;
	image_yscale += speedScale;
	
	alpha += (speedScale / 2);
}
else
{
	image_xscale = 1;
	image_yscale = 1;
	
	alpha = 0.5;
	
	if(destroy)
	{
		alarm[1] = TEMPO_FEEDBACK * room_speed;
	}
}

image_xscale = clamp(image_xscale, 0, 1);
image_yscale = clamp(image_yscale, 0, 1);

alpha = clamp(alpha, 0, 0.5);