/// @descripition Verifica se o som está pausado
/// @arg0 sound

var sound = argument0;

if(audio_is_paused(sound))
{
	return 1;
}
else
{
	return 0;
}