/// @description Mostra mensagem no log
/// @arg0 message

var mensagem = "";

mensagem = "\n##################################################\n";
mensagem += string(argument0);
mensagem += "\n##################################################\n ";

show_debug_message(mensagem);