/// @description Controla estadoAtual

if(move != 0)
{
	image_xscale = 2 * move;
}

if(place_meeting(x, y + 1, objParede))
{
	if(!bate){
	    if(move != 0)
	    {
	        estadoAtual = estado_personagem.andando;
	    }
	    else
		{
			estadoAtual = estado_personagem.parado;
		}
	}
}
else
{
    if(vsp < 0)
	{
		estadoAtual = estado_personagem.pulando;
	}
	else
	{
		estadoAtual = estado_personagem.caindo;
	}
}
//ataque
if(keyatk){
	bate = 1;
	estadoAtual = estado_personagem.ataque;
}
