/// @description Action button

with(objPaiAlternativaV_F)
{
	if(id != other)
	{
		if(marcada)
		{
			if(index == other.index)
			{
				marcada = 0;
					
				imageIndexMe -= 3;
				imageIndexMp -= 3;
				imageIndexMl -= 3;
					
				image_index = imageIndexMl;
					
				ativo = 1;
			}
		}
	}
}
	
marcada = !marcada;
	
if(marcada)
{
	imageIndexMe += 3;
	imageIndexMp += 3;
	imageIndexMl += 3;
		
	image_index = imageIndexMl;
}
else
{
	imageIndexMe -= 3;
	imageIndexMp -= 3;
	imageIndexMl -= 3;
					
	image_index = imageIndexMl;
}
	
if(!podeDesmarcar)
{
	ativo = 0;
}