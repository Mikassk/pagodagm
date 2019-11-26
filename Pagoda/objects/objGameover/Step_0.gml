/// @description
//dist = point_distance(x,y,x0,y0);


//
if((abs(y-y0) >350)  && !muda){
	muda = 1;
	speed = 0;
	
	alarm[0] = room_speed/6;
}
if(x<= 576 && y <= 352){
	speed = 0;
	if(!instance_exists(objBtnJogarNov)){
		instance_create_layer(576,596,"buttom", objBtnJogarNov);
	}
}