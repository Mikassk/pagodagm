/// @descripition Verifica se o som está tocando
/// @arg0 sound

var sound = argument0;

if(audio_is_playing(sound))
{
	return 1;
}
else
{
	return 0;
}