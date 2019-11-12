/// @description Movimentos
if(estadoAtual == statusboss2.entrada){
	if((y - yinicia )< 120){
		speed = 0.2;
		direction = 225;
	}
	else{
		speed = 0;
	}
	if(escala < 2.4 && !mudaescala){
		mudaescala = 1;
		alarm[1] = room_speed/2;
		
	}
	else if( escala >=2.4 && estadoAtual == statusboss2.entrada && !mudaescala){
		mudaescala = 1;
		alarm[1] =room_speed/2;
		
		
	}
}
if(estadoAtual == statusboss2.idle){
	speed = 0;
}
if(estadoAtual == statusboss2.desce){
	speed = 1.5;
	direction = 270;
}
if(estadoAtual == statusboss2.cai){
	speed = 4.2;
	direction = 270;
}
