/// @description

if(verifica_status_jogo())
{
	if(alarms[1] != -1)
	{
		alarm[1] = alarms[1];
		alarms[1] = -1;
	}
	
	if(alarms[2] != -1)
	{
		alarm[2] = alarms[2];
		alarms[2] = -1;
	}
	
	if(tipo == 3)
	{
		if(verifica_status_jogo())
		{
			if(!lado)
			{
				left += _speed;

				if(left >= sprW)
				{
					left = 0;
				}
			}
			else
			{
				if(lado == 1)
				{
					left -= _speed;

					if(left <= 0)
					{
						left = sprW;
					}
				}
			}
		
			left = clamp(left, -sprW, sprW);
		}

	}
}
else
{
	if(alarm[1] != -1)
	{
		alarms[1] = alarm[1];
		alarm[1] = -1;
	}
	
	if(alarm[2] != -1)
	{
		alarms[2] = alarm[2];
		alarm[2] = -1;
	}
}