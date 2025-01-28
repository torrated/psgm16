/// @description 

if (instance_exists(obj_juego))
{
	if (obj_juego.next_room <> obj_juego.previous_room)
	{
		draw_text(0,0,"you completed level "+string(obj_juego.previous_room));
		draw_text(0,20,"next level "+string(obj_juego.next_room));
	}
	else
	{
		draw_text(0,0,"You failed");
		if (instance_exists(obj_player) && (obj_player.vidas > 0))
			draw_text(0,20,"play again level " + string(obj_juego.next_room));
		else
			draw_text(0,20,"game over");
	}
}