/// @description
//image_xscale = 2 ;
//image_yscale = 2;
image_xscale = 2;
#region fisica
grav = 0.2; //Gravidade
hsp = 0; //Velocidade Horizontal
vsp = 0; //Velocidade Vertical
movespeed = 4; //Velocidade de movimento
jumps = 0; //Pulos
jumpsmax = 2; //Pulos máximos
jumpspeed = 12; //Velocidade do pulo


vspmax = 0;

keyleft = noone;
keyright = noone;
keyjump = noone;
keydown = noone;
keyatk = noone;
keyup = noone;

move = 0;
#endregion fisica

#region estado
estadoAtual = estado_personagem.preso;
ultimoEstado = noone;

#endregion estado

#region variaveis
bate = 0;
abaixar = 0;
anda = 0;
anda_ = 0;
pulo2 = 0;
olhacima = 0;

contsolta = 0;
soltar = 1;
teclaanterior = noone;

spawna = 0;

dano = 0;

morrefase = 0;

teste = 0;
#endregion variaveis
alarm[3] = room_speed*3;
