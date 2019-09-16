/// @description Troca sprite

if(ultimoEstado != estadoAtual)
{
	ultimoEstado = estadoAtual;
	
	image_index = 0;
}

switch(estadoAtual)
{
	case estado_personagem.parado:
		image_speed = (1 / movespeed) * movespeed;
		sprite_index = sprPersonagemParado;
		break;
	case estado_personagem.andando:
		image_speed = (1 / movespeed) * movespeed;
		sprite_index = sprPersonagemAndando;
		break;
	case estado_personagem.pulando:
		image_speed = (1 / jumpspeed) * jumpspeed;
		sprite_index = sprPersonagemPulando;
		break;
	case estado_personagem.caindo:
		image_speed = 0;
		sprite_index = sprPersonagemCaindo;
		break;
		
		case estado_personagem.ataque:
		image_speed = 1;
		sprite_index = sprPersonagemAtacando;
		break;
		
	default:
		break;
}

mask_index = sprMaskPersonagem;