/// @description 

if(sprite_exists(_spr))
{
	sprite_index = _spr;
	ativo = 1;
}
else
{
	if(!sprite_exists(sprite_index))
	{
		instance_destroy();
	}
	else
	{
		ativo = 1;
	}
}