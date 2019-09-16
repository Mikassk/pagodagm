/*if(!TELA_MENU)
{
	var _room = asset_get_index("rmTelaJogo");
	
	if(!room_exists(_room))
	{
		_room = room_next(room);
	}
	
	if(room_exists(_room))
	{
		room_goto(_room);
	}
}