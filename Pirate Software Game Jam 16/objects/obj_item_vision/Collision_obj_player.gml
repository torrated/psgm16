/// @description

if (instance_exists(obj_niebla) && !item_activado)
{
	instance_destroy(obj_niebla);
	item_activado = true;
	alarm[0] = 60; //60 = 1 segundo
}