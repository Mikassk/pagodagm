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
		proximoEstado = statusboss2.corre;
	break;
	case statusboss2.corre:
		
		image_speed = 1;
		sprite_index = sprJorogumoCorre;
		proximoEstado = statusboss2.ataque;
	break;
	case statusboss2.ataque:
		image_speed = 1;
		sprite_index = sprJorogumoAtaque;
		proximoEstado = statusboss2.idle;
	break;
	case statusboss2.sobe:
		image_speed = 1;
		sprite_index = sprJorogumoSubindo;
		proximoEstado = statusboss2.idle;
	break;
	case statusboss2.toca:
		image_speed = 1;
		sprite_index = sprJorogumoTocando;
		proximoEstado = statusboss2.corre;
	break;
	case statusboss2.dano:
		image_speed = 1;
		sprite_index = sprJorogumoDano;
		proximoEstado = statusboss2.idle;
	break;
	case statusboss2.cai:
		image_speed = 1;
		sprite_index = sprJorogumoCaindo;
		proximoEstado = statusboss2.idle;
	break;
	case statusboss2.desce:
		//image_speed = 1;
		sprite_index = sprJorogumoSubindo;
		proximoEstado = statusboss2.idle;
	break;
	case statusboss2.entrada:
		image_speed = 1;
		sprite_index = sprJorogumoCorre;
		proximoEstado = statusboss2.toca;
	break;
	case statusboss2.balanca:
		image_speed = 0;
		sprite_index = sprJorogumoIdle;
		proximoEstado = statusboss2.sobe;
	break;
	
}

if(pontos == 0){
	px = 643;
}
else if(pontos == -1){
	px = 189;
}
else if(pontos == 1){
	px = 1079;
}