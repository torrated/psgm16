/// @description 

if (object_index <> other.object_index)
{
	if (object_index == obj_player)
	{
		salud -= other.damage;
		if (salud <= 0)
		{
			vidas -= 1;
			x = xstart;
			y = ystart;
			if (instance_exists(obj_juego))
			{
				obj_player.puede_moverse = false;
				obj_juego.previous_room = room;
				obj_juego.next_room = room;
				room_goto(RoomChangeLevel);
			}
		}
	}
}