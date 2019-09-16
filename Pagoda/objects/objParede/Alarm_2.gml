/// @description

if(verifica_status_jogo())
{
	if(tipo == 2)
	{
		if(!collision_rectangle(x - (sprite_width / 2), y, x + (sprite_width / 2), y + (sprite_height), objPersonagem, 1, 0))
		{
			image_index = 0;
			sprite_index = sprPuf;
			mask_index = mask;
			
			puf = 0;
		}
		else
		{
			alarm[2] = 1;
		}
	}
}
else
{
	if(alarms[2] == -1)
	{
		alarms[2] = 1;
	}
}