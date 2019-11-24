/// @description Movimentos

#region entrada
if(estadoAtual == statusboss2.entrada){
	if((y - yinicia )< 120){
		speed = 0.2;
		direction = 225;
	}
	else{
		speed = 0;
	}
	if(escala < 2 && !mudaescala){
		mudaescala = 1;
		alarm[1] = room_speed/2;
		
	}
	else if( escala >=2 && estadoAtual == statusboss2.entrada && !mudaescala){
		mudaescala = 1;
		alarm[1] =room_speed/2;
		
		
	}
}
#endregion entrada
if(estadoAtual == statusboss2.idle){
	speed = 0;
}
if(estadoAtual == statusboss2.desce){
	if(!para){
		speed = 1.5;
	}
	else{
		speed = 0;
	}
	direction = 270;
}
if(estadoAtual == statusboss2.cai){
	speed = 4.2;
	direction = 270;
}
if(estadoAtual == statusboss2.ataque){
	speed = 0;
	
}
if(estadoAtual == statusboss2.toca){
	speed = 0;
	
}
if(estadoAtual == statusboss2.balanca){
	speed = 0;
}
if(estadoAtual == statusboss2.sobe){
	direction = 90;
}