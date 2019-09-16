/// @description

image_speed = 0;

mask = sprMaskParede;
nonMask = sprNonMaskParede;

mask_index = mask;

tipo = 0; //0 - Parede; 1 - Plataforma; 2 - Puf; 3 - Esteira;

puf = 0;  //Para tipo 2
pufImageIndex = 6 //Para tipo 2
pufAnimacao = asset_get_index("sprPufAnimacao");
tempoPuf = 0.5; //Para tipo 2
tempoAparecePuf = 5; //Para tipo 2

lado = 0; //Para tipo 3
_speed = 3.5; //Para tipo 3 - speed do personagem - 1;
left = 0; //Para tipo 3

spr = asset_get_index("sprEsteira"); //Para tipo 3

sprW = 0; //Para tipo 3
sprH = 0; //Para tipo 3

_x = x; //Para tipo 3
_y = y; //Para tipo 3

_xx = 0; //Para tipo 3
_yy = 0; //Para tipo 3

if(sprite_exists(spr)) //Para tipo 3
{
	sprW = sprite_get_width(spr);
	sprH = sprite_get_height(spr);
	
	_xx = (sprW / 2) - (sprite_width / 2);
	_yy = (sprH / 2) - (sprite_height / 2);
}

alarms[0] = -1;
alarms[1] = -1;
alarms[2] = -1;

alarm[0] = 1;