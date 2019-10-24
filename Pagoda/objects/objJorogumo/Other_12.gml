/// @description 
if(estadoAtual == statusboss2.desce){
	if(place_meeting(x,y+200,objParede)){
		estadoAtual = statusboss2.cai;
	}
}
if(estadoAtual == statusboss2.cai){
	if(image_index == 2){
		image_speed = 0;
	}
	if(place_meeting(x,y,objParede)){
	
		estadoAtual = statusboss2.idle;
	
	}
}