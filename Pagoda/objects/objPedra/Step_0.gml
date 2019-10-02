/// @description 
speed = velocidade;
if(sprite_index == sprPedraExplode){
	image_xscale = 1.5;
	image_yscale = 1.5;
	image_angle = 0;
	speed = 0;
	if(image_index > image_number -1){
		instance_destroy();
	}
}