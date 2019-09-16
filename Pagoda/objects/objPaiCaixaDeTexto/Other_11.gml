/// @description 

if(textoInput != "")
{
	textoInput = string_copy(textoInput, 1, tamanho);
	
    textoResposta = string_upper(textoInput);
	
	if(tranformaTexto == "")
	{
		texto = textoInput;
	}
	else if(tranformaTexto == "uppercase")
	{
		texto = string_upper(textoInput);
	}
	else
	{
		if(tranformaTexto == "lowercase")
		{
			texto = string_lower(textoInput);
		}
	}
    
	if(inputText)
	{
		inputText = 0;
	    destroyTextbox(inputId);
	}
}
else
{
	textoInput = "";
	
	textoResposta = "";
	
	texto = "";
	
	if(inputText)
	{
		inputText = 0;
	    destroyTextbox(inputId);
	}
}