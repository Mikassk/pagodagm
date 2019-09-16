/// @descripition Pause som
/// @arg0 sound

var sound = argument0;

if(!sound_is_paused(sound))
{
	audio_pause_sound(sound);
}