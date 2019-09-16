/// @description Cronometro

if(verifica_status_jogo())
{
	if(CRONOMETRO)
	{
		if(SEGUNDOS > 0)
		{
			SEGUNDOS -= 1;
	
			alarm[0] = room_speed;
		}
		else
		{
			if(MINUTOS > 0)
			{
				MINUTOS -= 1;
				SEGUNDOS = 60;
		
				alarm[0] = 1;
			}
			else
			{
				if(VIDAS > 1)
				{
					VIDAS -= 1;
				
					MINUTOS = MINUTOS_START;
					SEGUNDOS = SEGUNDOS_START;
			
					alarm[0] = room_speed;
				}
				else
				{
					VIDAS = 0;
					
					if(sprite_exists(asset_get_index("sprFeedbackNegativoCronometro")))
					{
						feedback = instance_create_feedback(0);
						feedback.sprNegativo = asset_get_index("sprFeedbackNegativoCronometro");
					}
					else
					{
						instance_create_feedback(0);
					}
				}
			}
		}
	}
}