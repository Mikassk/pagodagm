/// @description 
image_angle = direction - 180;
dist = distance_to_point(x0,y0);

if(place_meeting(x,y+1,objParede)|| place_meeting(x,y+1,objPersonagem)){
	speed = 0;
	image_index = 1;
	if(!morre){
		morre = 1;
		alarm[0] = room_speed/2;
	}
}
if(y > room_height + 200){
	instance_destroy();
}
if(x > room_width + 100 || x < 0 - 100){
	instance_destroy();
}
if(segue){
	event_user(0);
}