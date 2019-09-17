/// @description Variáveis Globais

#region Padrões

#region Configurações

randomize();

image_speed = 0;

game_set_speed(60, gamespeed_fps);

application_surface_enable(0);

//window_center();

#endregion Configurações

#region Status Jogo

globalvar telas;
telas = noone;

enum telaatual {
	apresentacao,
	tutorial,
	boss1,
	boss2,
	perde,
	neutra
};

globalvar PAUSE;
PAUSE = 0;

globalvar POPUP;
POPUP = 0;

globalvar AJUDA;
AJUDA = 0;

globalvar FEEDBACK;
FEEDBACK = 0;

globalvar TRANSICAO;
TRANSICAO = 0;

#endregion Status Jogo

#region Transição
muda = 0;

globalvar FADE_IN_FADE_OUT;
FADE_IN_FADE_OUT = 0;

globalvar ROOM_TRANSICAO_TELA;
ROOM_TRANSICAO_TELA = noone;

#endregion Transição

#region Util

globalvar MOUSE_PRESSED;
MOUSE_PRESSED = 0;

globalvar LIMPA_RESPOSTA_ERRADA;
LIMPA_RESPOSTA_ERRADA = 1;

globalvar BTN_CONFIRMAR;
BTN_CONFIRMAR = 0;

#endregion Util

#region Pintura

globalvar CORES2;
CORES2 = ds_list_create();

ds_list_add(CORES2, $FFFFFF, $565757, $C7A5F5, $BA5963, $EDCB86, $A3CD82, $75D5FC, $396389, $79DABF, $555CEB);

globalvar CORES;
CORES = ds_list_create();

ds_list_add(CORES, $C9D887, $57DBEA);

globalvar CORES_CORRETAS;
CORES_CORRETAS = ds_list_create();

ds_list_add(CORES_CORRETAS, $57DBEA, $57DBEA, $57DBEA, $57DBEA, $57DBEA, $57DBEA, $57DBEA, $57DBEA, $57DBEA, $57DBEA);
ds_list_add(CORES_CORRETAS, $57DBEA, $57DBEA, $57DBEA, $57DBEA, $57DBEA, $57DBEA, $57DBEA, $57DBEA, $57DBEA, $57DBEA);
ds_list_add(CORES_CORRETAS, $57DBEA, $57DBEA, $57DBEA, $57DBEA, $57DBEA, $57DBEA, $57DBEA, $57DBEA, $57DBEA, $57DBEA);
ds_list_add(CORES_CORRETAS, $57DBEA, $57DBEA, $57DBEA, $57DBEA, $57DBEA, $57DBEA, $57DBEA, $C9D887, $C9D887, $C9D887);
ds_list_add(CORES_CORRETAS, $C9D887, $C9D887, $C9D887, $C9D887, $C9D887, $C9D887, $C9D887, $C9D887, $C9D887, $C9D887);
ds_list_add(CORES_CORRETAS, $C9D887, $C9D887, $C9D887, $C9D887, $C9D887, $C9D887);

globalvar INDEX_COR;
INDEX_COR = 0;

globalvar INDEX_COR2;
INDEX_COR2 = 0;


#endregion Pintura

#region Leitura Arquivo .txt

if(LEITURA_ARQ_TXT)
{
	globalvar ARQ_TXT;

	ARQ_TXT = ds_list_create();

	var file = file_text_open_read(working_directory + "\Arquivo.txt");

	var textoLinha;
	textoLinha[0] = "";

	var numLinha = 0;

	while(!file_text_eof(file))
	{
		textoLinha[numLinha] = file_text_read_string(file);
		ds_list_add(ARQ_TXT, string(textoLinha[numLinha]));
	
		numLinha++;
	
		file_text_readln(file);
	}

	file_text_close(file);
}

#endregion Leitura Arquivo .txt

#region Perguntas estilo quiz

if(PERGUNTAS_QUIZ)
{
	globalvar PERGUNTAS;
	
	var pergunta = "";
	var resposta = "";
	
	var alternativa = "";
	var alternativas = ds_list_create();
	
	var anexo = "";
	var anexos = ds_list_create();

	for(var i = 0; i < ds_list_size(ARQ_TXT); i++)
	{
		pergunta = "";
		resposta = "";
		
		alternativa = "";
		ds_list_clear(alternativas);
		
		anexo = "";
		ds_list_clear(anexos);
		
		if(string_contains(ARQ_TXT[|i], "PERGUNTA = "))
		{
			ARQ_TXT[|i] = string_replace(ARQ_TXT[|i], "PERGUNTA = ", "");
			
			pergunta = string_copy(ARQ_TXT[|i], 1, (string_pos("&", ARQ_TXT[|i]) - 1));
			ARQ_TXT[|i] = string_delete(ARQ_TXT[|i], 1, (string_pos("&", ARQ_TXT[|i])));
		}
		
		while(string_contains(ARQ_TXT[|i], "ALTERNATIVA = "))
		{
			ARQ_TXT[|i] = string_replace(ARQ_TXT[|i], "ALTERNATIVA = ", "");
			
			alternativa = string_copy(ARQ_TXT[|i], 1, (string_pos("&", ARQ_TXT[|i]) - 1));
			ARQ_TXT[|i] = string_delete(ARQ_TXT[|i], 1, (string_pos("&", ARQ_TXT[|i])));
			
			if(string_contains(alternativa, "*"))
			{
				alternativa = string_copy(alternativa, 1, (string_pos("*", alternativa) - 1));
				
				resposta = alternativa;
			}
			
			ds_list_add(alternativas, alternativa);
		}
		
		while(string_contains(ARQ_TXT[|i], "ANEXO = "))
		{
			ARQ_TXT[|i] = string_replace(ARQ_TXT[|i], "ANEXO = ", "");
			
			anexo = string_copy(ARQ_TXT[|i], 1, (string_pos("&", ARQ_TXT[|i]) - 1));
			ARQ_TXT[|i] = string_delete(ARQ_TXT[|i], 1, (string_pos("&", ARQ_TXT[|i])));
			
			ds_list_add(anexos, anexo);
		}
		
		PERGUNTAS[i, INDEX_PERGUNTA] = pergunta;
		PERGUNTAS[i, INDEX_RESPOSTA] = resposta;
		PERGUNTAS[i, INDEX_QTDE_ALTERNATIVA] = ds_list_size(alternativas);
		
		for(var j = 0; j < ds_list_size(alternativas); j++)
		{
			PERGUNTAS[i, j + INDEX_PRIMEIRA_ALTERNATIVA] = alternativas[|j];
		}
		
		for(var j = 0; j < ds_list_size(anexos); j++)
		{
			PERGUNTAS[i, j + (ds_list_size(alternativas) - 1) + INDEX_PRIMEIRO_ANEXO] = anexos[|j];
		}
	}
}

globalvar TAM_PERGUNTA;
TAM_PERGUNTA = 0;

globalvar TAMANHO_TEXTO_ROOM;
TAMANHO_TEXTO_ROOM = 0;

globalvar PERGUNTA;
PERGUNTA = 0;

#endregion Perguntas estilo quiz

#region Vidas

globalvar RESTART_VIDAS;
RESTART_VIDAS = 1;

globalvar VIDAS;
VIDAS = VIDAS_START;

#endregion Vidas

#region Cronometro

globalvar CRONOMETRO;
CRONOMETRO = 0;

globalvar MINUTOS;
MINUTOS = MINUTOS_START;

globalvar SEGUNDOS;
SEGUNDOS = SEGUNDOS_START;

globalvar TEMPO_ALARM_CRONOMETRO;
TEMPO_ALARM_CRONOMETRO = -1;

#endregion Cronometro

#endregion Padrões

#region Jogo de plataforma

enum key {
	left = vk_left,
	right = vk_right,
	jump = vk_space,
	down = vk_down,
	atk = ord("Z")
};

enum estado_personagem {
	parado,
	andando,
	pulando,
	caindo,
	ataque,
	morre,
	abaixa
};

#endregion Jogo de plataforma

#region Jogo/Atividade

#endregion Jogo/Atividade