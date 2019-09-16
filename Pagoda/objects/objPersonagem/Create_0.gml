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
jumpspeed = 10; //Velocidade do pulo

keyleft = noone;
keyright = noone;
keyjump = noone;
keydown = noone;
keyatk = noone;

move = 0;
#endregion fisica

#region estado
estadoAtual = estado_personagem.parado;
ultimoEstado = noone;

#endregion estado

#region variaveis
bate = 0;

#endregion variaveis
