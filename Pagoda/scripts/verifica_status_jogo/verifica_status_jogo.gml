/// @description Verifica se o jogo não está parado
/// @arg0 pause
/// @arg1 popup
/// @arg2 ajuda
/// @arg3 feedback
/// @arg4 transition_screen

var pause = 0;
var popup = 0;
var ajuda = 0;
var feedback = 0;
var transicao = 0;

if(argument_count == 3)
{
	pause = argument[0];
	popup = argument[1];
	ajuda = argument[2];
	feedback = 0;
	transicao = 0;
}
else if(argument_count == 4)
{
	pause = argument[0];
	popup = argument[1];
	ajuda = argument[2];
	feedback = argument[3];
	transicao = 0;
}
else if(argument_count == 5)
{
	pause = argument[0];
	popup = argument[1];
	ajuda = argument[2];
	feedback = argument[3];
	transicao = argument[4];
}
else
{
	pause = 0;
	popup = 0;
	ajuda = 0;
	feedback = 0;
	transicao = 0;
}

if(pause == PAUSE && popup == POPUP && ajuda == AJUDA && feedback == FEEDBACK && transicao == TRANSICAO)
{
	return 1;
}
else
{
	return 0;
}