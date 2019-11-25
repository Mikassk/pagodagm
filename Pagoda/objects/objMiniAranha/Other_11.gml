/// @description muda estados
if(estadoAtual == statusboss.idle){
	speed = 1.8;
	direction = 270;
	if(place_meeting(x,y+20,objParede)){
		estadoAtual = statusboss.desce;
	}	

}
if(estadoAtual == statusboss.desce){
	speed = 2.1;
	direction = 270;
	if(place_meeting(x,y+1,objParede)){
		if(x <= room_width/2){
		direction = 0;
		}
		else if(x >= room_width/2){
			direction = 180;
		}
		estadoAtual = statusboss.corre;
	}
}
if(estadoAtual == statusboss.corre){
	event_user(3);
	speed = 2;
	
	
	
}
if(estadoAtual == statusboss.explode){
	speed = 0;
	if(image_index > image_number -1 ){
		estadoAtual = statusboss.morre;
	}
}
if(estadoAtual == statusboss.morre){
	if(place_meeting(x,y,objPersonagem)){
		danomorre = 1;
		with(objPersonagem){
			dano =1;
		}
	}
	else{
		with(objPersonagem){
			dano = 0;
		}
	}
	speed = 0;
	if(image_index > image_number -1 ){
		if(!morre){
			morre = 1;
			alarm[1] = room_speed*1.5;
		}
	}
}