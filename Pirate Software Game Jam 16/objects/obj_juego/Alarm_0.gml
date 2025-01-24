/// @description Mira si podemos ir al siguiente nivel

if (instance_exists(obj_player))
{
	if (obj_player.puntos >= obj_juego.puntos_por_nivel[$ room_get_name(room)])
	{
		show_message("Level Complete!");
		if (room == room_last)
			show_message("You completed the game!");
		else
			room_goto_next();
	}
	else
	{
		show_message("You failed!")
		obj_player.vidas -= 1;
		if (obj_player.vidas > 0)
			room_restart();
		else
			prc_game_over();
	}
}