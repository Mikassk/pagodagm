/// @description estados
image_xscale = escala*escalas;
image_yscale = escala;

if(ultimoEstado != estadoAtual)
{
	ultimoEstado = estadoAtual;
	
	image_index = 0;
}


switch(estadoAtual)
{
	case statusboss.idle:
		image_speed = 0;
		sprite_index = sprMiniAAnda;
		proximoEstado = statusboss.corre;
	break;
	case statusboss.corre:
		image_speed = 1;
		sprite_index = sprMiniAAnda;
		proximoEstado = statusboss.explode;
	break;
	case statusboss.explode:
		image_speed = 1;
		sprite_index = sprMiniAPrepara;
		proximoEstado = statusboss.morre;
	break;
	case statusboss.morre:
		image_speed = 1;
		sprite_index = sprMiniAExplode;
		proximoEstado = statusboss.idle;
	break;
	case statusboss.desce:
		image_speed = 0;
		sprite_index = sprMiniAAnda;
		proximoEstado = statusboss.idle;
	break;
	
	
	
	
}
