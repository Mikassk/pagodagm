/// @description Action button

with(objPaiPincel)
{
	//if(ativo)
	{
		if(cor == $FFFFFF)
		{
			cor = other.cor;
			other.cor = $FFFFFF;
		}
		else
		{
			if(cor == other.corOriginal)
			{
				cor = $FFFFFF;
				other.cor = other.corOriginal;
			}
			else
			{
				var trocaCores = 1;
				var baseTinta = id;
				
				with(objPaiBaseTinta)
				{
					if(trocaCores)
					{
						if(other.cor == corOriginal)
						{
							trocaCores = 0;
								
							other.cor = baseTinta.cor;
							baseTinta.cor = $FFFFFF;
								
							cor = corOriginal;
						}
					}
				}
				cor = other.cor;
				other.cor = $FFFFFF;
			}
		}
	}
}