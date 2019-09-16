/// @description Action button

with(objPaiAlternativa)
{
	if(id != other)
	{
		if(marcada)
		{
			if(index == other.index)
			{
				marcada = 0;
				ativo = 1;
			}
		}
	}
}
	
marcada = !marcada;
	
if(!podeDesmarcar)
{
	ativo = 0;
}