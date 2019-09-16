/// @description Verifica se contém um carecter em específico na palavra e/ou frase
/// @arg text
/// @arg contains

var text = argument0;
var contains = argument1;

var textAux = string_replace_all(text, contains, "");

if(string_length(textAux) != string_length(text))
{
	return 1;
}

return 0;