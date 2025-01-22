/// @description 

if (instance_exists(obj_controles))
{
	if (obj_controles.niebla)
		image_xscale = 1;
	else
		image_xscale = 0;
}
	
if (instance_exists(obj_player))
{
    x = obj_player.x;
    y = obj_player.y;
}