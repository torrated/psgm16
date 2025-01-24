/// @description 

if ((object_index <> obj_player) && !(golpeado))
{
	salud -= 1;
	golpeado = true;
	instance_create_layer(x,y,layer,obj_hit);
	if (salud == 0)
		instance_destroy(self,true);
	alarm[2] = 1; // knockback
}