/// @description sobe parede
if(estadoAtual == statusboss2.balanca){
	py = y;
	estadoAtual = statusboss2.sobe;
}
if(estadoAtual == statusboss2.toca){
	if(lados){
		pontos = 0;
	}
	if(!lados){
		pontos = 0;
	}
	estadoAtual = statusboss2.corre;
}