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


//alarm[2] = room_speed*2;