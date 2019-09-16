/// @description Ativa tipo == 2

if(verifica_status_jogo())
{
	if(tipo == 2)
	{
		if(image_index < pufImageIndex)
		{
			image_index += 1;
		
			if(tempoPuf > 0)
			{
				alarm[1] = tempoPuf * room_speed;
			}
			else
			{
				alarm[1] = 1;
			}
		}
		else
		{
			if(sprite_exists(pufAnimacao))
			{
				if(sprite_get_number(pufAnimacao) > 1)
				{
					image_speed = 1;
					sprite_index = pufAnimacao;
				}
			}
			
			mask_index = nonMask;
		}
	}
}
else
{
	if(alarms[1] == -1)
	{
		alarms[1] = 1;
	}
}
