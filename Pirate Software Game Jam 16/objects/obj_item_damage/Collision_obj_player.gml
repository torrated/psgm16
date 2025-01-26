/// @description

if (instance_exists(obj_player) && !item_activado)
{
	obj_player.damage += 1;
	item_activado = true;
	alarm[0] = 60; //60 = 1 segundo
}