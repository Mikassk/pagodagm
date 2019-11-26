/// @description

#region status // tamanho
image_yscale = 2;
if(move != 0)
{
	image_xscale = 2 * move;
}

if(verifica_status_jogo())
{
	event_user(0);
	event_user(1);
	event_user(2);
	event_user(3);
	event_user(4);
}
else
{
	image_speed = 0;
}
#endregion status // tamanho
if(image_xscale >0){
	scaleperson = 1;
}
else if (image_xscale <0){
	scaleperson = -1;
}
xperson = x;
if(bate){ // completar animação de bater
	if(image_index > image_number -1){
		bate = 0;
	}
}
if(anda){
	if(image_index > (image_number -1)/2){
	anda = 0;
	}
}
if(abaixar){
	if(image_index>image_number-1){
		image_speed = 0;
	}
	if(!keydown){
		image_speed = -1;
	}
	if(image_index == 0){
		abaixar = 0;
	}
	if(image_speed == -1){
		if(image_index > (image_number -1)){
			abaixar = 0;
		}
	}
}
if(pulo2){
	if(image_index > image_number -1){
		image_speed = 0;
		grav = 0.3;
	}
}
if(estadoAtual == estado_personagem.morre){
	if(image_index > image_number-1){
		image_speed = 0;
		
	}
}
if(morreu){
	if(!morrefase){
		morrefase = 1;
		sound_is_paused(sndMusicaJorogumo);
		sound_play(sndMusicaFinal,0,VOLUME_ENTRADA,0);
		alarm[2] = room_speed*2;
		
		
	}
}
if(estadoAtual == estado_personagem.ataque){
	teste = 1;
}
else if(estadoAtual != estado_personagem.ataque){
	teste = 0;
}