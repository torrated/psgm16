/// @description 
if (instance_exists(obj_controles) && (obj_controles.debug))
{
    var _space = 100;
    var _space_i = _space * 2;

	var _color = draw_get_color();
	
	draw_set_color(c_white)
	if (instance_exists(obj_player))
	{
		
		//draw_text(32,_space_i,"salud: "+string(obj_player.salud));_space_i += _space;
	}
	if (instance_exists(obj_timer))
	{
		//draw_text(32,_space_i,"obj_timer.tiempo:"+string(obj_timer.tiempo));_space_i += _space;
	}
	if (instance_exists(obj_explosion))
	{
		//draw_text(32,_space_i,"obj_explosion exists in "+string(obj_explosion.x)+","+string(obj_explosion.y) );_space_i += _space;
	}
	else
	{
		//draw_text(32,_space_i,"obj_explosion does not exist" );_space_i += _space;
	}
	draw_set_color(_color);
}