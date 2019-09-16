/// @description Verifica resposta da alternativa
/// @arg0 win

var win = argument0;

with(objPaiAlternativa)
{
	if(marcada)
	{
		if(!correta)
		{
			win = 0;
			
			if(LIMPA_RESPOSTA_ERRADA)
			{
				marcada = 0;
			}
		}
	}
	else
	{
		if(correta)
		{
			win = 0;
		}
	}
}

with(objPaiAlternativaV_F)
{
	if(marcada)
	{
		if(!correta)
		{
			win = 0;
			
			if(LIMPA_RESPOSTA_ERRADA)
			{
				marcada = 0;
				
				imageIndexMe -= 3;
				imageIndexMp -= 3;
				imageIndexMl -= 3;
					
				image_index = imageIndexMl;
			}
		}
	}
	else
	{
		if(correta)
		{
			win = 0;
		}
	}
}

with(objAlternativaArqTXT)
{
	if(marcada)
	{
		if(!correta)
		{
			win = 0;
			
			if(LIMPA_RESPOSTA_ERRADA)
			{
				marcada = 0;
			}
		}
	}
	else
	{
		if(correta)
		{
			win = 0;
		}
	}
}

return win;