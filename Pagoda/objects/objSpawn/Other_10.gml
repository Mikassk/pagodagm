/// @description 

spawn = 0;
if(spawnpedra <=maxspawn){
	if(!feedbackspawn){
		image_speed = 0;
		alarm[0] = room_speed/3; //*tempospawn
	}	
	else{
		alarm[0] = room_speed*tempospawn;
	}
	
	image_index = 0;
}