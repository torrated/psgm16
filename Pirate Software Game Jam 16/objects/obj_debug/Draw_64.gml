/// @description 
if (debug)
{
    var _space = 16;
    var _space_i = _space * 2;

	if (instance_exists(obj_player))
	{
		draw_text(32,_space_i,"player position: "+string(obj_player.x)+","+string(obj_player.y) );_space_i += _space;
	}
	if (instance_exists(obj_timer))
	{
		draw_text(32,_space_i,"obj_timer.tiempo:"+string(obj_timer.tiempo));_space_i += _space;
	}
	if (instance_exists(obj_explosion))
	{
		draw_text(32,_space_i,"obj_explosion exists in "+string(obj_explosion.x)+","+string(obj_explosion.y) );_space_i += _space;
	}
	else
	{
		draw_text(32,_space_i,"obj_explosion does not exist" );_space_i += _space;
	}
}