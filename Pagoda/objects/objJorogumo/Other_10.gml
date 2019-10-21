/// @description Controle estados

image_xscale = escala*escalas;
image_yscale = escala;

if(ultimoEstado != estadoAtual)
{
	ultimoEstado = estadoAtual;
	
	image_index = 0;
}



switch(estadoAtual)
{
	case statusboss2.idle:
		image_speed = 1;
		sprite_index = sprJorogumoIdle;
		proximoEstado = statusboss.corre;
	break;
	case statusboss2.corre:
		image_speed = 1;
		sprite_index = sprJorogumoCorre;
		proximoEstado = statusboss.idle;
	break;
	case statusboss2.ataque:
		image_speed = 1;
		sprite_index = sprJorogumoAtaque;
		proximoEstado = statusboss.idle;
	break;
	case statusboss2.sobe:
		image_speed = 1;
		sprite_index = sprJorogumoSubindo;
		proximoEstado = statusboss.idle;
	break;
	case statusboss2.toca:
		image_speed = 1;
		sprite_index = sprJorogumoTocando;
		proximoEstado = statusboss.idle;
	break;
	case statusboss2.dano:
		image_speed = 1;
		sprite_index = sprJorogumoDano;
		proximoEstado = statusboss.idle;
	break;
	case statusboss2.cai:
		image_speed = 1;
		sprite_index = sprJorogumoCaindo;
		proximoEstado = statusboss.idle;
	break;
}
