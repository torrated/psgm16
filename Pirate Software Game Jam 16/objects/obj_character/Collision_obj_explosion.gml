/// @description 

if (other.image_alpha > 0.8)
{
	if !(collision_line(x, y, other.x, other.y,obj_colisiones,false,false))	   
		instance_destroy();
}