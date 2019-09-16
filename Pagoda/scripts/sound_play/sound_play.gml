/// @descripition Dá play no som
/// @arg0 sound
/// @arg1 loops
/// @arg2 level
/// @arg3 play_if_not_is_playing by default 0
/// @arg4 sound_with_fade by default 0
/// @arg5 time_fade by default 0
/// @arg6 trade_sound by default 0
/// @arg7 sound_trade by default noone

var sound = noone;
var loops = 0;
var level = 0;
	
var playIfNotIsPlaying = 0;

var soundWithFade = 0;
var time = 0;
var trade = 0;
var soundTrade = noone;

var playingSound = noone;

var priority = 10;

if(argument_count == 3)
{
	sound = argument[0];
	loops = argument[1];
	level = argument[2];
	
	playIfNotIsPlaying = 0;

	soundWithFade = 0;
	time = 0;
	trade = 0;
	soundTrade = noone;
}
else if(argument_count == 4)
{
	sound = argument[0];
	loops = argument[1];
	level = argument[2];
	
	playIfNotIsPlaying = argument[3];

	soundWithFade = 0;
	time = 0;
	trade = 0;
	soundTrade = noone;
}
else if(argument_count == 6)
{
	sound = argument[0];
	loops = argument[1];
	level = argument[2];
	
	playIfNotIsPlaying = argument[3];

	soundWithFade = argument[4];
	time = argument[5];
	trade = 0;
	soundTrade = noone;
}
else if(argument_count == 8)
{
	sound = argument[0];
	loops = argument[1];
	level = argument[2];
	
	playIfNotIsPlaying = argument[3];

	soundWithFade = argument[4];
	time = argument[5];
	trade = argument[6];
	soundTrade = argument[7];
}
else
{
	return;
}

if(!audio_exists(sound))
{
	return;
}

if(trade)
{
	if(!audio_exists(soundTrade))
	{
		return;
	}
}

if(playIfNotIsPlaying)
{
	if(!sound_is_playing(sound))
	{
		playingSound = audio_play_sound(sound, priority, loops);
		
		if(soundWithFade)
		{
			audio_sound_gain(playingSound, 0, 0);
			audio_sound_gain(playingSound, level, time);
		}
		else
		{
			audio_sound_gain(playingSound, level, time);
		}
	}
}
else
{
	var playingSoundTrade = noone;
	
	playingSound = audio_play_sound(sound, priority, loops);
	playingSoundTrade = audio_play_sound(soundTrade, priority, loops);
	
	if(soundWithFade)
	{
		if(!trade)
		{
			audio_sound_gain(playingSound, 0, 0);
			audio_sound_gain(playingSound, level, time);
		}
		else
		{
			audio_sound_gain(playingSound, level, 0);
			audio_sound_gain(playingSound, 0, time);
			
			audio_sound_gain(playingSoundTrade, 0, 0);
			audio_sound_gain(playingSoundTrade, level, time);
		}
	}
	else
	{
		audio_sound_gain(playingSound, level, time);
	}
}