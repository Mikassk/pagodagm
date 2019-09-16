/// @description Desenha texto justificado
/// @arg left
/// @arg top
/// @arg right
/// @arg font
/// @arg text_preparied
/// @arg indent
/// @arg indent_size

var left = 0;
var top = 0;
var right = 0;
var font = 0;
var textJustified = "";
var indent = 0;
var indent_size = 0;

if(argument_count == 5)
{
	left = argument[0];
	top = argument[1];
	right = argument[2];
	font = argument[3];
	textJustified = argument[4];
}
else if(argument_count == 7)
{
	left = argument[0];
	top = argument[1];
	right = argument[2];
	font = argument[3];
	textJustified = argument[4];
	indent = argument[5];
	indent_size = argument[6];
}
else
{
	show_debug_mensagem("Invalid argument number...");
	exit;
}

var palavra = "";
var width = 0;

var prevPalavra = "";
var prevWidth = 0;

var _x = 0 + (indent * indent_size);
var _y = 0;

var dif = 0;

var index = 0;

draw_set_font(font);

var stringW = string_width(" ");
var stringH = string_height("1j");

var paragrafo = indent * indent_size;

var cont = 0;

draw_set_halign(fa_left);
draw_set_valign(fa_top);

for(var i = 0; i < array_height_2d(textJustified); i++)
{
	palavra = textJustified[i, INDEX_PALAVRAS];
	width = textJustified[i, INDEX_WIDTH];
	
	if(string_contains(palavra, "#"))
	{
		dif = 0;
		
		if(i > 0)
		{
			prevPalavra = textJustified[i - 1, INDEX_PALAVRAS];
			prevWidth = textJustified[i - 1, INDEX_WIDTH];
			
			dif = abs(right - (left + _x + prevWidth)) / (cont - 1);
		}
		
		if(dif > stringW)
		{
			dif = 0;
		}
		
		index = 0;
		
		for(var j = abs(i - cont); j < i; j++)
		{
			textJustified[j, INDEX_DIF] = (dif * index);
			
			index++;
		}
		
		_x = 0 + paragrafo;
		_y += 1;
		
		cont = 0;
	}
	else
	{
		if(i > 0)
		{
			prevPalavra = textJustified[i - 1, INDEX_PALAVRAS];
			prevWidth = textJustified[i - 1, INDEX_WIDTH];
			
			if(!string_contains(prevPalavra, "#"))
			{			
				if((left + _x + width + prevWidth + stringW) <= right)
				{
					_x += prevWidth + stringW;
				}
				else
				{
					dif = abs(right - (left + _x + prevWidth)) / (cont - 1);
					
					index = 0;
					
					for(var j = abs(i - cont); j < i; j++)
					{
						textJustified[j, INDEX_DIF] = (dif * index);
						
						index++;
					}
					
					_x = 0;
					_y += 1;
				
					cont = 0;
				}
			}
		}
	}
	
	textJustified[i, INDEX_X] = left + _x;
	textJustified[i, INDEX_Y] = top + (_y * stringH);
	
	textJustified[i, INDEX_DIF] = 0;
	
	if(i == array_height_2d(textJustified) - 1)
	{
		dif = abs(right - (left + _x + width)) / (cont - 1);
		
		if(dif > stringW)
		{
			dif = 0;
		}
		
		index = 0;
		
		for(var j = abs(i - cont); j <= i; j++)
		{
			textJustified[j, INDEX_DIF] = (dif * index);
			
			index++;
		}
		
		cont = 0;
	}
	
	if(!string_contains(palavra, "#"))
	{
		cont++;
	}
}

return textJustified;