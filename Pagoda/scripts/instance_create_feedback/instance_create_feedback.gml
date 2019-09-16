/// @description Cria feedback
/// @arg0 feedback_positive
/// @arg1 feedback_text
/// @arg2 feedback_star

var positivo = -1;
var texto = "";
var estrela = -1;

var layerName = "Feedback";
var _depth = -5000;

var feedback = noone;

if(argument_count == 1)
{
	positivo = argument[0];
}
else if(argument_count == 2)
{
	texto = argument[1];
	
	layerName = "FeedbackTexto";
	_depth = -4500;
}
else if(argument_count == 3)
{
	estrela = argument[2];
	
	layerName = "FeedbackEstrela";
	_depth = -4000;
}
else
{
	return;
}

if(positivo != -1)
{
	feedback = instance_create_centro_tela(objPaiFeedback, layerName, _depth, 0, 1);
	feedback.positivo = positivo;
}
else if(texto != "")
{
	feedback = instance_create_centro_tela(objPaiFeedbackTexto, layerName, _depth, 0, 1);
	feedback.texto = texto;
}
else
{
	layer_create_depth(layerName, _depth);
	
	feedback = instance_create_layer(x, y, layerName, objPaiFeedbackEstrela);
	feedback.estrela = estrela;
}

return feedback;