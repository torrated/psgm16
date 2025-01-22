/// @description 

if ((object_index <> obj_player) && !(golpeado))
{
	salud -= 1;
	golpeado = true;
	if (salud == 0)
		instance_destroy(self,true);
	alarm[2] = 1; // knockback
}