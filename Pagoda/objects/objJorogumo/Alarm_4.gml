/// @description atira
var a = 0;
a = instance_create_layer(x,y,"boss",objAtaqueTeia);

if(lados){
	with(a){
		///direction = 290; // é para adicionar o que segue
	 segue = 1;
	}
}
else{
	with(a){
		///direction = 250; // é para adicionar o que segue
	 segue = 1;
	}
}
if(vida<=5){
	if(contaataque ==4){
		alarm[4] = room_speed/3;
	}
	
}