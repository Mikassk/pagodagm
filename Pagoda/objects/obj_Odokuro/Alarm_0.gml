/// @description 

troca = 0;
if(estadoAtual != statusboss.idle){
	if(inicio){
		lado = !lado;
	}
	if(!inicio){
		inicio = 1;
	}
}
estadoAtual = proximoEstado;