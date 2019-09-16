/// @description 

var layerName = layer_get_name(layer);

if(sprite_exists(_sprBasePintura))
{
	for(var i = 0; i < sprite_get_number(_sprBasePintura); i++)
	{
		basePintura = instance_create_layer(x, y, layerName, _objBasePintura);
		basePintura.depth++;
		basePintura.image_index = i;
	
		basePintura.imageIndexMe = i;
		basePintura.imageIndexMp = i;
		basePintura.imageIndexMl = i;
		
		basePintura.corCorreta = CORES_CORRETAS[|i];
	}
}
