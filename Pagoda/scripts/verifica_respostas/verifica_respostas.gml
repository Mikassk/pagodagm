/// @description Verifica respostas

var win = noone;

if(instance_exists(objPaiAlternativa)
|| instance_exists(objPaiAlternativaV_F)
|| instance_exists(objAlternativaArqTXT))
{
	if(win == noone)
	{
		win = 1;
	}
	
	win = verifica_resposta_alternativa(win);
}
	
if(instance_exists(objPaiCaixaDeTexto))
{
	if(win == noone)
	{
		win = 1;
	}
	
	win = verifica_resposta_caixa_de_texto(win);
}
	
if(instance_exists(objPaiBaseArrastavel))
{
	if(win == noone)
	{
		win = 1;
	}
	
	win = verifica_resposta_arrastavel(win);
}

if(instance_exists(objPaiBasePintura))
{
	if(win == noone)
	{
		win = 1;
	}

	with(objPaiBasePintura)
	{
		if(cor != corCorreta)
		{
			win = 0;
		}
	}
}

if(win != noone)
{
	if(BTN_CONFIRMAR)
	{
		instance_create_feedback(win);
	}
	else
	{
		if(win)
		{
			instance_create_feedback(-1, "Muito bem!");
		}
		else
		{
			instance_create_feedback(-1, "Tente novamente.");
		}
	}
}