/// @description 

image_speed = 0;

cor = $696969;

pergunta = PERGUNTAS[PERGUNTA, INDEX_PERGUNTA];

resposta = PERGUNTAS[PERGUNTA, INDEX_RESPOSTA];

textJustified = prepare_text_to_justify(fnt16, pergunta);

TAM_PERGUNTA = draw_text_justified(x, y, TAMANHO_TEXTO_ROOM, fnt16, textJustified);

qtdeAlternativas = PERGUNTAS[PERGUNTA, INDEX_QTDE_ALTERNATIVA];

alarm[0] = 1;