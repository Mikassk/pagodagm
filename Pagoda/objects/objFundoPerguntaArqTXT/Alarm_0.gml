/// @description 

if(image_xscale == 1 && image_yscale == 1)
{
	var margem = 100;
	
	var _x = x - (sprite_width / 2) + margem;
	var _y = y - (sprite_height / 2) + (margem / 2);
	
	var layerName = "HUD_Pergunta";
	var _depth = -1000;
	
	layer_create_depth(layerName, _depth);
	
	instance_create_layer(_x, _y, layerName, objPerguntaArqTXT);
	
	TAMANHO_TEXTO_ROOM = x + (sprite_width / 2) - margem
	
	if(sprite_exists(asset_get_index("sprBtnConfirmar")))
	{
		_x = (x + (sprite_width / 2) - margem) - (sprite_get_width(asset_get_index("sprBtnConfirmar")) / 2);
		_y = (y + (sprite_height / 2) - (margem / 2)) - (sprite_get_height(asset_get_index("sprBtnConfirmar")) / 2);
	}
	else
	{
		_x = x + (sprite_width / 2) - margem;
		_y = y + (sprite_height / 2) - (margem / 2);
	}
	
	layerName = "HUD_PerguntaHUD";
	_depth = -1500;
	
	layer_create_depth(layerName, _depth);
	
	btn = instance_create_layer(_x, _y, layerName, objBtnConfirmar);
	btn.popup = POPUP;
}

event_inherited();
