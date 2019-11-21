/// @description 
estadoAtual = statusboss.idle;
ultimoEstado = noone;
proximoEstado = noone;

escala = 2;
escalas = 1;

explode = 0;
morre = 0;

image_xscale = escala;
image_yscale = escala;
if(x <= room_width/2){
	direction = 0;
	escalas = -1;
}
else if(x >= room_width/2){
	direction = 180;
	escalas = 1;
}