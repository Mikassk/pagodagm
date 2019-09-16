/// @description Desenha casas decimais
/// @arg0 x
/// @arg1 y
/// @arg2 text

var _x = argument0;
var _y = argument1;
var text = string(argument2);

if(string_length(text) > 9)
{
	UDC_B = string_copy(text, 1, string_length(text) - 9);
	UDC_Mi = string_copy(text, string_length(text) - 8, 3);
	UDC_M = string_copy(text, string_length(text) - 5, 3);
	UDC = string_copy(text, string_length(text) - 2, 3);
	
	text = UDC_B + " " + UDC_Mi + " " + UDC_M + " " + UDC;
}
else if(string_length(text) > 6)
{
	UDC_Mi = string_copy(text, 1, string_length(text) - 6);
	UDC_M = string_copy(text, string_length(text) - 5, 3);
	UDC = string_copy(text, string_length(text) - 2, 3);
	
	text = UDC_Mi + " " + UDC_M + " " + UDC;
}
else if(string_length(text) > 3)
{
	UDC_M = string_copy(text, 1, string_length(text) - 3);
	UDC = string_copy(text, string_length(text) - 2, 3);
	
	text = UDC_M + " " + UDC;
}

draw_text(_x, _y, text);