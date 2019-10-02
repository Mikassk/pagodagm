/// @description troca estado
if(estadoAtual == statusboss.idle && !troca){
	troca = 1;
		
	alarm[0] = room_speed*trocaestado;
	
	
}
if(estadoAtual == statusboss.corre && !troca){
	lado = !lado;
	troca = 1;
	alarm[0] = room_speed*trocaestado;
}


