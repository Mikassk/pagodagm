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
		movespeed = 4;
		image_speed = 1;
		sprite_index = sprPersonagemCorrendo;
		break;
	case estado_personagem.pulando:
		movespeed = 3.5;
		image_speed = (1 / jumpspeed) * jumpspeed;
		sprite_index = sprPersonagemPulando;
		break;
	case estado_personagem.caindo:
		movespeed = 10;
		image_speed = 0;
		sprite_index = sprPersonagemCaindo;
		break;
		
	case estado_personagem.ataque:
		image_speed = 1;
		sprite_index = sprPersonagemAtacando;
		break;
	case estado_personagem.abaixa:
		image_speed = 1;
		sprite_index = sprPersonagemAbaixa;
		break;	
	case estado_personagem.puloduplo:
		image_speed = 1;
		sprite_index = sprPersonagemRoda;
		break;
	case estado_personagem.cima:
		image_speed = 0;
		sprite_index = sprPersonagemCima;
		break;
	default:
		break;
}

mask_index = sprMaskPersonagem;