/// @description Prepara texto para justificar
/// @arg font
/// @arg text

var font = noone;
var text = "";

if(argument_count == 2)
{
	font = argument[0];
	text = argument[1];
}
else
{
	show_debug_mensagem("Invalid argument number...");
	exit;
}

var textL = string_length(text);

var palavra = "";
var palavras = noone;
var index = 0;

var char = "";

draw_set_font(font);

for(var i = 1; i <= textL; i++)
{
	char = string_char_at(text, i);
	
	if(char != " " && char != "#" && i != textL)
	{
		palavra += char;
	}
	else
	{
		if(i == textL)
		{
			palavra += char;
		}
		
		if(palavra != "")
		{
			//palavra = string_replace_all(palavra, "|", "");
			
			palavras[index, INDEX_PALAVRAS] = palavra;
			
			if(palavra != "#")
			{
				palavras[index, INDEX_WIDTH] = string_width(string_replace_all(palavra, "|", ""));
			}
			else
			{
				palavras[index, INDEX_WIDTH] = 0;
			}
			
			index++;
		}
		else
		{
			if(char == "#")
			{
				palavras[index, INDEX_PALAVRAS] = char;
				palavras[index, INDEX_WIDTH] = 0;
				
				index++;
			}
		}
		
		palavra = "";
	}
}

return palavras;