/// @description 

if ((object_index <> obj_player) && !(golpeado))
{
	salud -= 1;
	golpeado = true;
	
	var _hit = instance_create_layer(x,y,"Explosion",obj_hit);
	_hit.character = object_index;
	
	if (salud == 0)
		instance_destroy(self,true);
	alarm[2] = 1; // knockback
}