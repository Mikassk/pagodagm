/// @description 
spawna = 0;
if(soltar){
	
	instance_create_layer(-100,640,"boss",objMiniAranha);
	instance_create_layer(1400,640,"boss",objMiniAranha);
	alarm[1] = room_speed * 4;
}
if( estadoAtual == estado_personagem.parado){
	instance_create_layer(-100,640,"boss",objMiniAranha);
	instance_create_layer(1400,640,"boss",objMiniAranha);
	alarm[1] = room_speed * 4;
	
}