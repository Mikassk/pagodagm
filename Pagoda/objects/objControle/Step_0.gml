/// @description Controle

#region Stop Sound With Gain 0

for(var i = 0; i < 1000; i++)
{
	if(audio_exists(i))
	{
		if(sound_is_playing(i))
		{
			if(audio_sound_get_gain(i) == 0)
			{
				audio_sound_gain(i, 1, 0);
				
				sound_stop(i);
			}
		}
	}
}

#endregion Stop Sound With Gain 0

#region Cronometro

if(CRONOMETRO)
{
	if(verifica_status_jogo())
	{
		if(alarm[0] == -1)
		{
			if(TEMPO_ALARM_CRONOMETRO != -1)
			{
				alarm[0] = TEMPO_ALARM_CRONOMETRO;
				TEMPO_ALARM_CRONOMETRO = -1;
			}
			else
			{
				alarm[0] = room_speed;
			}
		}
	}
	else
	{
		if(alarm[0] != -1)
		{
			TEMPO_ALARM_CRONOMETRO = alarm[0];
			alarm[0] = -1;
		}
		else
		{
			if(TEMPO_ALARM_CRONOMETRO == -1)
			{
				TEMPO_ALARM_CRONOMETRO = room_speed;
			}
		}
	}
}
else
{
	if(alarm[0] != -1)
	{
		alarm[0] = -1;
	}
}

#endregion Cronometro

#region mudança tela apresentacao
if(telas = telaatual.apresentacao){
	if(!muda){
	event_user(0);
	}
}

#endregion mudança tela apresentacao

if(VIDAS <=4){
	if(room == rmTelaBoss2){
		if(!instance_exists(objDano)){
			instance_create_layer(room_width/2,room_height/2,"dano",objDano);
		}
	}
}
