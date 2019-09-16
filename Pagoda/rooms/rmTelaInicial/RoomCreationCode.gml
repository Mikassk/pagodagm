if(!TELA_INICIAL)
{
	var _room = ROOM_APRESENTACAO;
	
	if(!room_exists(_room))
	{
		_room = room_next(room);
	}
	
	if(room_exists(_room))
	{
		room_goto(_room);
	}
}