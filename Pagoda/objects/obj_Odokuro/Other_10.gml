/// @description troca sprite
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
		trocaestado = 6;
		image_speed = 1;
		sprite_index = sprOdokuroIdle;
		proximoEstado = statusboss.corre;
	break;
	case statusboss.corre:
		trocaestado = 8; // mudar para x inicial e final
		image_speed = 1;
		sprite_index = sprOdokuroCorre;
		proximoEstado = statusboss.idle;
	break;
	
}