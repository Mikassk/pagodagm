/// @description 
event_user(0);
event_user(1);
if(entra){
	
	event_user(2);
}
if(entra){
	mudaescala = 1;
}

if(!lados && !dano){
	escalas = 1;
}
if(lados && !dano){
	escalas = -1;
	
}

if(entraok && !entra){
	
	if(mudaestado){
		mudaestado = 0;
		entra = 1;
		estadoAtual = proximoEstado;
		
	}
	
}
if(vida >=5){
	maxataque = 3;
	ataquetoca = 2;
}
if(vida >=3 && vida <5){
	maxataque = 4;
	ataquetoca = 3;
}
if(vida <3){
	maxataque = 4;
	ataquetoca = 3;
}