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
			anda = 1;
	    }
	    else if(move == 0 && !anda && !abaixar)
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
if(keyatk && !anda_){
	bate = 1;
	estadoAtual = estado_personagem.ataque;
}
if(keydown && !anda_){
	abaixar = 1;
	estadoAtual = estado_personagem.abaixa;
}
if(keyboard_check(vk_left) || keyright){
	anda_ = 1;
}

if(!keyboard_check(vk_left) && !keyright){
	anda_ = 0;
}