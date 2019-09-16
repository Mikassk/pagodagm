/// @description Verifica resposta dos object arrastaveis
/// @arg0 win

var win = argument0;

with(objPaiBaseArrastavel)
{
	if(instance_exists(item))
	{
		if(index != item.index)
		{
			win = 0;
			
			if(LIMPA_RESPOSTA_ERRADA)
			{
				item.volta = 1;
				item.base = noone;
				item = noone;
			}
		}
	}
	else
	{
		win = 0;
	}
}

return win;