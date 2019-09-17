/// @description

#region status // tamanho
image_yscale = 2;
if(move != 0)
{
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
#endregion status // tamanho

if(bate){ // completar animação de bater
	if(image_index > image_number -1){
		bate = 0;
	}
}
if(anda){
	if(image_index > (image_number -1)/2){
	anda = 0;
	}
}
if(abaixar){
	if(image_index>image_number-1){
		image_speed = 0;
	}
	if(!keydown){
		image_speed = -1;
	}
	if(image_index == 0){
		abaixar = 0;
	}
	if(image_speed == -1){
		if(image_index > (image_number -1)){
			abaixar = 0;
		}
	}
	
	
}
