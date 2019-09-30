/// @description verifica status

if(ultimoEstado != estadoAtual)
{
	ultimoEstado = estadoAtual;
	
	image_index = 0;
}


switch(estadoAtual)
{
	case statusboss.idle:
		image_speed = 1;
		sprite_index = sprOdokuroIdle;
	break;
	case statusboss.corre:
		image_speed = 1;
		sprite_index = sprOdokuroCorre;
	break;
	
}