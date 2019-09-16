/// @description Cria objecto no centro da tela
/// @arg0 object
/// @arg1 layer_name
/// @arg2 depth
/// @arg3 draw_GUI
/// @arg4 instance_exists

var object = argument0;

var layerName = argument1;
var _depth = argument2;

var _drawGUI = argument3;

var instanceExists = argument4;

var _x = 0;
var _y = 0;

if(view_enabled)
{
	var camera = view_camera;
	
	if(_drawGUI)
	{
		_x = camera_get_view_width(camera) / 2;
		_y = camera_get_view_height(camera) / 2;
	}
	else
	{
		_x = (camera_get_view_x(camera) + camera_get_view_width(camera)) / 2;
		_y = (camera_get_view_y(camera) + camera_get_view_height(camera)) / 2;
	}
}
else
{
	_x = room_width / 2;
	_y = room_height / 2;
}

if(layerName == "")
{
	layerName = "CenterScreen";
}

layer_create_depth(layerName, _depth);

if(instanceExists)
{
	if(!instance_exists(object))
	{
		return instance_create_layer(_x, _y, layerName, object);
	}
	else
	{
		with(object)
		{
			return id;
		}
	}
}
else
{
	return instance_create_layer(_x, _y, layerName, object);	
}

return noone;