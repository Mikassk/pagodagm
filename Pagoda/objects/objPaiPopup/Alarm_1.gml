/// @description 

if(image_alpha > 0)
{
	alarm[1] = 1;
	
	image_alpha -= speedAlpha;
	alpha -= speedAlpha / 2;
}
else
{
	image_alpha = 0;
	alpha = 0;
	
	instance_destroy();
}

image_alpha = clamp(image_alpha, 0, 1);
alpha = clamp(alpha, 0, 0.5);