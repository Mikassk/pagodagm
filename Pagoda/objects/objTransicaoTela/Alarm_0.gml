/// @description 

TRANSICAO = 1;

if(alpha < 1)
{
    alarm[0] = 1;
    
    alpha += speedAlpha;
}
else
{
    alpha = 1;
    
	TRANSICAO = 0;
	
    if(room_exists(ROOM_TRANSICAO_TELA))
    {
        room_goto(ROOM_TRANSICAO_TELA);
		instance_destroy();
    }
	else
	{
		alarm[1] = 1;
	}
}

alpha = clamp(alpha, 0, 1);