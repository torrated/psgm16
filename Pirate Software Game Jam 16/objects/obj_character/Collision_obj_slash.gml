/// @description 

if (object_index <> obj_player)
{
	salud -= 1;
	if (salud == 0)
		instance_destroy(self,true);
}