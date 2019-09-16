/// @description Action button

if(instance_exists(objPerguntaArqTXT))
{
	with(objAlternativaArqTXT)
	{
		if(id != other)
		{
			marcada = 0;
		}
	}
	
	marcada = !marcada;
		
	if(!BTN_CONFIRMAR)
	{
		verifica_respostas();
	}
}