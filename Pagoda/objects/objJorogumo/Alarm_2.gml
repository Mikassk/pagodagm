/// @description ataque teia
contaataque += 1;
ataca = 0;

var a = 0;
var b = 0;
var c = 0;
a = instance_create_layer(x,y,"boss",objAtaqueTeia);
b = instance_create_layer(x,y,"boss",objAtaqueTeia);
c = instance_create_layer(x,y,"boss",objAtaqueTeia);
with(a){
	direction = 270;
}
with(b){
	direction = 235;
}
with(c){
	direction = 305;
}

if(contaataque <=1){
var d = 0;
var e = 0;

d = instance_create_layer(-100,640,"boss",objMiniAranha);
e =	instance_create_layer(1400,640,"boss",objMiniAranha);
}
//alarm[2] = room_speed*2;