/// @description 

var _space = 16;
var _space_i = _space * 2;

if (instance_exists(obj_player))
{
    var _vel_x = obj_player.x - obj_player.xprevious;
    var _vel_y = obj_player.y - obj_player.yprevious;
    draw_text(32,_space_i,"Vel x:"+string(_vel_x));_space_i += _space;
    draw_text(32,_space_i,"Vel y:"+string(_vel_y));_space_i += _space;
    
    draw_text(32,_space_i,"x_to:"+string(obj_player.x_to));_space_i += _space;
    draw_text(32,_space_i,"y_to:"+string(obj_player.y_to));_space_i += _space;
}

if (instance_exists(obj_controles))
{
    draw_text(32,_space_i,"move_x:"+string(obj_controles.move_x));_space_i += _space;
    draw_text(32,_space_i,"move_y:"+string(obj_controles.move_y));_space_i += _space;
}