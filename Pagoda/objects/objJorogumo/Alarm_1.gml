/// @description 
if(estadoAtual == statusboss2.entrada && escala< 2.4){
	escala+=0.2;
	mudaescala = 0;
}
else if(estadoAtual == statusboss2.entrada && escala >= 2.4){
	direction = 0;
	speed = 0;
	estadoAtual = statusboss2.toca;
	sound_play(sndBiwaEntrada,0,VOLUME_NARRA,0);
}