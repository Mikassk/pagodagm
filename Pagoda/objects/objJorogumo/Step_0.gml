/// @description 
event_user(0);
event_user(1);
if(entra){
	
	event_user(2);
}
if(entra){
	mudaescala = 1;
}

if(!lados){
	escalas = 1;
}
if(lados){
	escalas = -1;
	
}

if(entraok && !entra){
	
	if(mudaestado){
		mudaestado = 0;
		entra = 1;
		estadoAtual = proximoEstado;
		
	}
	
}