/// @description set sprite

if(positivo)
{
	sprite_index = sprPositivo;
}
else
{
	if(!positivo)
	{
		sprite_index = sprNegativo;
	}
	else
	{
		sprite_index = noone;
		instance_destroy();
	}
}