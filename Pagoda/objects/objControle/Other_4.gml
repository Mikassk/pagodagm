/// @description Restarte

#region Transição

instance_create_transicao_tela(1, noone);

#endregion Transição

#region Vidas

if(RESTART_VIDAS)
{
	RESTART_VIDAS = 0;
	VIDAS = VIDAS_START;
}

#endregion Vidas

#region Cronometro

if(room == ROOM_MENU)
{
	CRONOMETRO = 0;
	TEMPO_ALARM_CRONOMETRO = -1;
}

MINUTOS = MINUTOS_START;
SEGUNDOS = SEGUNDOS_START;

#endregion Cronometro

#region Util

BTN_CONFIRMAR = 0;

#endregion Util