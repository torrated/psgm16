/// @description 

var _font = draw_get_font();
var _color = draw_get_color();

// version
draw_sprite(spr_version,1,32+1,display_get_gui_height()-1);

// timer
if (instance_exists(obj_timer))
{
    draw_set_font(global.font_timer);
    draw_set_color(obj_timer.color);
    draw_text(475,75,string(obj_timer.tiempo));
}

// salud y vidas
if ((instance_exists(obj_player)) && (room <> RoomChangeLevel) && (room <> StartRoom))
{
	draw_set_font(_font);
	draw_set_color(c_white)

	for (var _i = 0; _i < obj_player.salud; _i++)
	{
		draw_sprite(spr_vidas,0,42+(_i*32),48);
	}
	draw_text(32,64,"lives: "+string(obj_player.vidas)); 
	
	if (instance_exists(obj_juego))
	{
		draw_text(32,96,"score: " + string(obj_player.puntos));
		if (obj_player.puntos < obj_juego.puntos_por_nivel[$ room_get_name(room)])
			draw_set_color(c_red);
		else
			draw_set_color(c_green);
		draw_text(32,128,"next level: " + string(obj_juego.puntos_por_nivel[$ room_get_name(room)]));
	}
}

draw_set_font(_font);
draw_set_color(_color);