/// @description 

if(alpha < 1)
{
	alarm[0] = 1;
	alpha += speedAlpha;
}
else
{
	alpha = 1;
	
	alarm[1] = tempoAlarm1;
}

alpha = clamp(alpha, 0, 1);