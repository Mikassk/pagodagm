/// @description 
var xm = 0;
xm = instance_nearest(x,y,objPersonagem);
if(abs(x - xm.x) <= 40){
	if(!explode){
		event_user(2);
	}
}