/// @description Verifica resposta da caixa de texto
/// @arg0 win

var win = argument0;

var texto = "";
var textoInput = "";
var textoResposta = "";

with(objPaiCaixaDeTexto)
{
	texto = self.texto;
	textoInput = self.textoInput;
	textoResposta = self.textoResposta;
	
	if(is_array(respostas))
	{
		for(var i = 0; i < array_length_1d(respostas); i++)
		{
			if(textoResposta != string_upper(respostas[i]))
			{
				win = 0;
				
				if(LIMPA_RESPOSTA_ERRADA)
				{
					self.texto = "";
					self.textoInput = "";
					self.textoResposta = "";
				}
			}
			else
			{
				win = 1;
					
				if(LIMPA_RESPOSTA_ERRADA)
				{
					self.texto = texto;
					self.textoInput = textoInput;
					self.textoResposta = textoResposta;
				}
				
				i = array_length_1d(respostas);
			}
		}
	}
	else
	{
		if(textoResposta != string_upper(respostas))
		{
			win = 0;
			
			if(LIMPA_RESPOSTA_ERRADA)
			{
				self.texto = "";
				self.textoInput = "";
				self.textoResposta = "";
			}
		}
	}
}

return win;