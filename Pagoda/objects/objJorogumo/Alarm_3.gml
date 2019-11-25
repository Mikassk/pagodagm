/// @description canta 
var a = 0;
var b = 0;
var c = 0;
a = instance_create_layer(-100,640,"boss",objMiniAranha);
b =	instance_create_layer(1400,640,"boss",objMiniAranha);


c = instance_create_layer(x,y,"boss",objAtaqueTeia);
if(lados){
	with(c){
		///direction = 290; // é para adicionar o que segue
	 segue = 1;
	}
}
else{
	with(c){
		///direction = 250; // é para adicionar o que segue
	 segue = 1;
	}
}
alarm[4] = room_speed/2;
