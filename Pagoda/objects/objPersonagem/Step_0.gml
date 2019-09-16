/// @description
image_yscale = 2;
if(move != 0){
image_xscale = 2 * move;
}

if(verifica_status_jogo())
{
	event_user(0);
	event_user(1);
	event_user(2);
	event_user(3);
	event_user(4);
}
else
{
	image_speed = 0;
}
if(bate){ // completar animação de bater
	if(image_index > image_number -1){
		bate = 0;
	}
}