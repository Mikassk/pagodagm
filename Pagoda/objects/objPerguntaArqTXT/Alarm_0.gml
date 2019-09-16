/// @description 

var sprW = sprite_get_width(asset_get_index("sprBtnBullet"));
var sprH = sprite_get_height(asset_get_index("sprBtnBullet"));

var indexAlternativas = ds_list_create();

var _x = x + (sprW / 2);
var _y = y + TAM_PERGUNTA;

for(var i = 0; i < qtdeAlternativas; i++)
{
	ds_list_add(indexAlternativas, INDEX_PRIMEIRA_ALTERNATIVA + i);
}

ds_list_shuffle(indexAlternativas);

var layerName = "HUD_PerguntaHUD";
var _depth = -1500;

layer_create_depth(layerName, _depth);

var alternativa = noone;

for(var i = 0; i < qtdeAlternativas; i++)
{
	alternativa = instance_create_layer(_x, _y, layerName, objAlternativaArqTXT);
	
	alternativa.numAlternativa = i + 1;
	alternativa.alternativa = PERGUNTAS[PERGUNTA, indexAlternativas[|i]];
	
	if(alternativa.alternativa == resposta)
	{
		alternativa.correta = 1;
	}
	
	alternativa.textJustified = prepare_text_to_justify(fnt14, alternativa.alternativa);
	
	draw_set_font(fnt14);
	_y += draw_text_justified(alternativa.x + (sprW / 2) + string_width(" "), alternativa.y - (sprH / 2), TAMANHO_TEXTO_ROOM, fnt14, alternativa.textJustified);
}