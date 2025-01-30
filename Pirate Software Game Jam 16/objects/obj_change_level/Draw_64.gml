/// @description 

if (instance_exists(obj_juego))
{
	if (obj_juego.next_room <> obj_juego.previous_room)
	{
		var _font = draw_get_font();
		draw_set_font(fnt_silom);
		draw_text(100,100,"you completed: "+string(room_get_name(obj_juego.previous_room)));

		if (obj_juego.next_room <> RoomChangeLevel)
			draw_text(100,200,"next: "+string(room_get_name(obj_juego.next_room)));
		else	
			draw_text(100,200,"Congratulations\nyou completed the game");
			
		draw_set_font(_font);
	}
	else
	{
		var _font = draw_get_font();
		draw_set_font(fnt_silom);
		draw_text(100,100,"You failed");
		if (instance_exists(obj_player) && (obj_player.vidas > 0))
			draw_text(100,200,"play again " + string(room_get_name(obj_juego.next_room)));
		else
			draw_text(100,200,"Game Over");
		draw_set_font(_font);
	}
}