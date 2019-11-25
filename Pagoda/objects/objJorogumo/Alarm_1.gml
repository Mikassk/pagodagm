/// @description  muda escala entrada
if(estadoAtual == statusboss2.entrada && escala< 2){
	escala+=0.2;
	mudaescala = 0;
}
else if(estadoAtual == statusboss2.entrada && escala >= 2){
	direction = 0;
	speed = 0;

	entraok = 1;
	
	
	estadoAtual = statusboss2.toca;
	sound_play(sndBiwaEntrada,0,VOLUME_NARRA,0);
}

if(estadoAtual == statusboss2.ataque){
	
	
}