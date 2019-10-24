/// @description Movimentos

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