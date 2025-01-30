/// @description Mira si podemos ir al siguiente nivel

if (instance_exists(obj_player))
{
	if (obj_player.puntos >= obj_juego.puntos_por_nivel[$ room_get_name(room)])
	{
		previous_room = room;
		next_room = room_next(room);
		room_goto(RoomChangeLevel);
	}
	else
	{
		obj_player.vidas -= 1;
		previous_room = room;
		next_room = room;
		room_goto(RoomChangeLevel);
	}
}