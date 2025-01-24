/// @description 

if (object_index <> other.object_index)
{
	if (object_index == obj_player)
	{
		salud -= 1;
		if (salud <= 0)
		{
			vidas -= 1;
			if (vidas >= 1)
			{
				x = xstart;
				y = ystart;
				show_message("You failed!")
				room_restart();
			}
			else
				prc_game_over();
		}
	}
}