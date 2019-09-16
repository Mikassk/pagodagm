/// @description 

if(ativo)
{
	if(instance_exists(item))
	{
		if(item.x == x
		&& item.y == y)
		{
			if(visible)
			{
				visible = 0;
			}
		}
	}
	else
	{
		if(!visible)
		{
			visible = 1;
		}
	}
}