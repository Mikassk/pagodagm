/// @descripition Para som
/// @arg0 sound
/// @arg1 stop_with_fade
/// @arg2 time_fade

if(argument_count == 1)
{
	var sound = argument[0];
	var stopWithFade = 0;
	var time = 0;
}
else if(argument_count == 3)
{
	var sound = argument[0];
	var stopWithFade = argument[1];
	var time = argument[2];
}
else
{
	return;
}

if(stopWithFade)
{
	var level = audio_sound_get_gain(sound);
	
	audio_sound_gain(sound, level, 0);
	audio_sound_gain(sound, 0, time);
}
else
{
	if(sound_is_playing(sound))
	{
		audio_stop_sound(sound);
	}
}