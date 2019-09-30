/// @description Movimentos
image_xscale = escala*escalas;
if(!lado){
	escalas = 1;
}
else{
	escalas = -1;
}
if(estadoAtual == statusboss.corre){
	
	if(!lado){
		speed = -vx;
	}
	else{ //lado
		speed = vx;
	}
}
if(estadoAtual == statusboss.idle){
	speed = 0;
}