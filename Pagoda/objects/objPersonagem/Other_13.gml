/// @description Controla estadoAtual
#region move e scale
if(move != 0)
{
	image_xscale = 2 * move;
}
#endregion move e scale
if(!morreu){
#region muda estados comum fisica



if(place_meeting(x, y + 1, objParede))
{
	if(!bate){
		if(move != 0 && !soltar)
		{
		    estadoAtual = estado_personagem.andando;
			anda = 1;
		}
		else if(move == 0 && !anda && !abaixar && !olhacima)
		{
			estadoAtual = estado_personagem.parado;
		}
	}
}
else
{
	if(vsp < 0 && !pulo2)
	{
		estadoAtual = estado_personagem.pulando;
	}
	else if(vsp >0 && !pulo2)
	{
		estadoAtual = estado_personagem.caindo;
	}
}

#endregion muda estados comum

#region ataque
if(keyatk && !anda_){
	bate = 1;
	estadoAtual = estado_personagem.ataque;
}
#endregion ataque

#region abaixa
if(keydown && !anda_ && place_meeting(x,y+1,objParede)){
	abaixar = 1;
	estadoAtual = estado_personagem.abaixa;
}
#endregion abaixa

#region teste se esta andando
if(keyboard_check(vk_left) || keyright){
	anda_ = 1;
}

if(!keyboard_check(vk_left) && !keyright){
	anda_ = 0;
}
#endregion teste se esta andando

#region pulo duplo
if((keyjump) && (jumps < 1)){
	estadoAtual = estado_personagem.puloduplo;
	pulo2 = 1;
}
#endregion pulo duplo

#region olhar para cima
if(move == 0 && keyup && jumps>1){
	estadoAtual = estado_personagem.cima;
	olhacima = 1;
}
else{
	olhacima = 0;
}
#endregion olhar para cima

#region soltar da tela
if(soltar){
	if(!spawna){
		spawna = 1;
		alarm[1] = room_speed*6;
	}
	estadoAtual = estado_personagem.preso;
}

#endregion soltar tela

#region prender se nao andar
if(estadoAtual == estado_personagem.parado && !soltar){
	if(!spawna){
		spawna = 1;
		alarm[1] = room_speed*7;
	}
}

if(estadoAtual == estado_personagem.cima && !soltar){
	if(!spawna){
		spawna = 1;
		alarm[1] = room_speed*7;
	}
}

if(estadoAtual == estado_personagem.preso && !soltar){
	if(!spawna){
		spawna = 1;
		alarm[1] = room_speed*6.8;
	}
}

#endregion prender se nao andar
} // fim morreu

if(VIDAS <= 0){
	estadoAtual = estado_personagem.morre;
}
