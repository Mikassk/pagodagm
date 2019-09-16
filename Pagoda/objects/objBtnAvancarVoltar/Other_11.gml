/// @description Action button

if(image_xscale > 0)
{
	instance_create_transicao_tela(0, room_next(room));
}
else
{
	instance_create_transicao_tela(0, room_previous(room));
}