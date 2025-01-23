/// @description 

var _font = draw_get_font();
var _color = draw_get_color();

// version
draw_sprite(spr_version,1,32+1,display_get_gui_height()-1);

//timer
if (instance_exists(obj_timer))
{
    draw_set_font(global.font_timer);
    draw_set_color(obj_timer.color);
    draw_text(1024-(72*1.5),72*1.5,string(obj_timer.tiempo));
}

if (instance_exists(obj_player))
{
	draw_set_font(_font);
	draw_set_color(c_white)
	draw_text(32,32,"vidas: "+string(obj_player.vidas)); 
	draw_text(32,64,"salud: "+string(obj_player.salud)); 
	draw_text(32,96,"puntos: "+string(obj_player.puntos)); 
}

draw_set_font(_font);
draw_set_color(_color);