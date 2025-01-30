/// @description

if (instance_exists(obj_timer) && !item_activado)
{
	obj_timer.tiempo += 10;
	item_activado = true;
	alarm[0] = 60; //60 = 1 segundo
}